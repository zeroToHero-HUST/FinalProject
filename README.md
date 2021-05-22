# FinalProject
## Tạo các bảng và thêm dữ liệu cho db
- Tạo db tên tuỳ ý, vào `src/main/resources/config.properties` sửa lại các thuộc tính DBNAME, USER, PASSWORD.
- Sau đó sử dụng terminal/cmd chạy các lệnh sau để tạo bảng và thêm dữ liệu:
```bash
$ mvn clean install
$ mvn exec:java -P create-tables
$ mvn exec:java -P populate-tables
```
- Nếu muốn xoá hết các bảng và tạo lại dữ liệu cho db:
```bash
$ mvn exec:java -P setup-database
```
