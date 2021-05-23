package com.zeroToHero.FinalProject.utilities;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class LoadProperties {
    private Properties prop;

    public LoadProperties(String filePath)
    {
        Properties prop = new Properties();
        try (InputStream resourceAsStream = getClass().getClassLoader().getResourceAsStream(filePath)) {
            prop.load(resourceAsStream);
        } catch (IOException e) {
            System.err.println("Unable to load properties file : " + filePath);
        }

        this.prop = prop;
    }

    public Properties getProp() {
        return prop;
    }
}
