package com.zeroToHero.FinalProject.utilities;

import com.zeroToHero.FinalProject.models.beans.Users;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.jackson.io.JacksonDeserializer;
import io.jsonwebtoken.lang.Maps;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.crypto.argon2.Argon2PasswordEncoder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;

import javax.crypto.SecretKey;

import java.util.Date;
import java.util.Properties;

public class Auth {
    private static final int saltLength = 128 / 8; // 128 bits
    private static final int hashLength = 256 / 8; // 256 bits
    private static final int parallelism = 1;
    private static final int memoryInKb = 10 * 1024; // 10 MB
    private static final int iterations = 10;
    private static final Argon2PasswordEncoder passwordEncoder = new Argon2PasswordEncoder(saltLength, hashLength, parallelism, memoryInKb, iterations);

    private static final Properties prop = new LoadProperties("config.properties").getProp();
    private static final String jwtAccessKey = prop.getProperty("JWT.ACCESS.KEY");
    private static final SecretKey key = Keys.hmacShaKeyFor(Decoders.BASE64.decode(jwtAccessKey));
    private static final int timeExpired = Integer.parseInt(prop.getProperty("JWT.ACCESS.EXP"));

    public static String encryptPassword(String password)
    {
        return passwordEncoder.encode(password);
    }

    public static boolean checkPassword(String pwInput, String pwDatabase)
    {
        return passwordEncoder.matches(pwInput, pwDatabase);
    }

    public static String generateAccessToken(Users user)
    {
        Date now = new Date();
        Date exp = new Date(System.currentTimeMillis() + timeExpired);

        return Jwts.builder()
                .setIssuedAt(now)
                .setExpiration(exp)
                .claim("user", user)
                .signWith(key)
                .compact();
    }

    public static void generateRefreshToken()
    {

    }

    public static void setTokenCookies(HttpServletResponse response, Users user)
    {
        String token = generateAccessToken(user);
        String[] split = token.split("\\.");
        String tokenHeaderPayload = split[0] + "." + split[1];
        String tokenSignature = split[2];

        Cookie cookie1 = new Cookie("tokenHeaderPayload", tokenHeaderPayload);
        cookie1.setMaxAge(timeExpired);

        Cookie cookie2 = new Cookie("tokenSignature", tokenSignature);
        cookie2.setMaxAge(timeExpired);
        cookie2.setHttpOnly(true);

        response.addCookie(cookie1);
        response.addCookie(cookie2);
    }

    public static Users verifyAccessToken(String token)
    {
        Users user = null;
        try {
            user = Jwts.parserBuilder().setSigningKey(key)
                    .deserializeJsonWith(new JacksonDeserializer(Maps.of("user", Users.class).build()))
                    .build().parseClaimsJws(token).getBody().get("user", Users.class);
        } catch (JwtException e)
        {
            return null;
        }

        return user;
    }
}
