# FinalProject
## Tạo các bảng và thêm dữ liệu cho db
- Tạo db tên tuỳ ý, vào `src/main/resources/config.properties` sửa lại các thuộc tính DBNAME, USER, PASSWORD.
- Sau đó sử dụng terminal/cmd chạy các lệnh sau để tạo bảng và thêm dữ liệu:
```bash
mvn clean install
mvn exec:java -P create-tables
mvn exec:java -P populate-tables
```
- Nếu muốn xoá hết các bảng và tạo lại dữ liệu cho db:
```bash
mvn exec:java -P setup-database
```
## Cài đặt sử dụng docker
- Cấu hình `src/main/resources/config.properties` và `.env` như sau:

| config.properties | .env |giá trị|
|-------------------|------|-------|
|DB_HOST_PORT||postgresql:5432|
|DB_DBNAME|DOCKER_DB_DBNAME|giống nhau và tuỳ ý|
|DB_USER|DOCKER_DB_USER|giống nhau và tuỳ ý|
|DB_PASSWORD|DOCKER_DB_PASSWORD|giống nhau và tuỳ ý|
||DOCKER_VIRTUAL_HOST|tuỳ chọn nếu sử dụng nginx-proxy|
||DOCKER_VIRTUAL_PORT|tuỳ chọn nếu sử dụng nginx-proxy|
||DOCKER_LETSENCRYPT_HOST|tuỳ chọn nếu sử dụng nginx-proxy|
||DOCKER_LETSENCRYPT_EMAIL|tuỳ chọn nếu sử dụng nginx-proxy|

- Chạy `docker compose up -d`
- Khởi tạo dữ liệu db (chạy lần lượt):
```bash
docker exec -it zerotohero-web bash
cd webapps/ROOT/WEB-INF/
java -classpath "lib/*:classes/." com/zeroToHero/FinalProject/database/dbPrep/DBPrepMain setup-database
```
