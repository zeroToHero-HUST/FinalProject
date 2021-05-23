package com.zeroToHero.FinalProject.database.queries.prepQueries;

public interface PopulateQuery {
    StringBuilder insertCountries = new StringBuilder(
        "INSERT INTO countries (name, description) VALUES \n" +
        "('Việt Nam', 'Việt Nam, tên gọi chính thức là Cộng hòa Xã hội chủ nghĩa Việt Nam, là quốc gia nằm ở cực Đông của bán đảo Đông Dương thuộc khu vực Đông Nam Á, giáp với Lào, Campuchia, Trung Quốc, Biển Đông và vịnh Thái Lan. Quốc gia này có chung đường biên giới trên biển với Thái Lan qua vịnh Thái Lan và với Trung Quốc, Philippines, Indonesia, Brunei và Malaysia qua Biển Đông. Việt Nam có diện tích 331.212 km², đường biên giới trên đất liền dài 4.639 km, đường bờ biển trải dài 3.260 km, dân số ước tính vào khoảng 98 triệu người[10] với 54 dân tộc trong đó người Kinh chiếm đa số. Thủ đô của Việt Nam là thành phố Hà Nội, thành phố đông dân cũng như có quy mô GRDP lớn nhất là Thành phố Hồ Chí Minh, còn thường được gọi phổ biến với tên cũ là Sài Gòn.'),\n" +
        "('Lào', 'Lào, tên chính thức là Cộng hoà Dân chủ Nhân dân Lào, là quốc gia nội lục tại bán đảo Đông Dương, Đông Nam Á, phía tây bắc giáp với Myanmar và Trung Quốc, phía đông giáp với Việt Nam, phía đông nam giáp với Campuchia, phía tây và tây nam giáp với Thái Lan. Lào là nước cộng hoà xã hội chủ nghĩa độc đảng, theo chủ nghĩa Marx và do Đảng Nhân dân Cách mạng Lào cầm quyền. Thủ đô của Lào, đồng thời là thành phố lớn nhất, là Vientiane. Các thành thị lớn khác là Luang Prabang, Savannakhet, và Pakse. Đây là một quốc gia đa dân tộc, người Lào chiếm khoảng 60% dân số, họ chủ yếu cư trú tại vùng thấp và chiếm ưu thế về chính trị và văn hoá. Các dân tộc Môn-Khmer, HMông và dân tộc bản địa vùng cao khác chiếm khoảng 40% dân số và sống tại khu vực đồi núi.'),\n" +
        "('Campuchia', 'Campuchia, tên chính thức: Vương quốc Campuchia, cũng còn gọi là Cao Miên hay Cam Bốt (theo tiếng Pháp: Cambodge, hay tiếng Anh: Cambodia),[8] là một quốc gia nằm trên bán đảo Đông Dương ở vùng Đông Nam Á. Campuchia giáp với vịnh Thái Lan ở phía tây nam, Thái Lan ở phía tây bắc, Lào ở phía đông bắc và Việt Nam ở phía đông. Campuchia có dân số hơn 15 triệu người. Phật giáo là quốc giáo chính thức và được hơn 97% dân số thực hành.[9] Các nhóm dân tộc thiểu số của Campuchia bao gồm người Việt, người Hoa, người Chăm và 30 bộ tộc trên đồi núi.[10] Thủ đô và thành phố lớn nhất là Phnom Penh, trung tâm chính trị, kinh tế và văn hóa của Campuchia. Campuchia theo chế độ quân chủ lập hiến theo hình thức tuyển cử, đứng đầu là quốc vương, hiện là Norodom Sihamoni, được Hội đồng Tôn vương lựa chọn làm nguyên thủ quốc gia. Người đứng đầu chính phủ là Thủ tướng Hun Sen, nhà lãnh đạo không thuộc hoàng gia phục vụ lâu nhất ở Đông Nam Á, nắm quyền từ năm 1985.');"
    );

    StringBuilder insertCities = new StringBuilder(
        "INSERT INTO cities (name, country_id, description) VALUES \n" +
        "('Hà Nội', 1, 'Hà Nội (chữ Hán: 河內) là thủ đô của nước Cộng hòa Xã hội chủ nghĩa Việt Nam, cũng là kinh đô của hầu hết các vương triều phong kiến tại Việt Nam trước đây. Do đó, lịch sử Hà Nội gắn liền với sự thăng trầm của lịch sử Việt Nam qua các thời kỳ.[5] Hà Nội là thành phố trực thuộc trung ương và là thành phố có diện tích lớn nhất cả nước từ khi tỉnh Hà Tây sáp nhập vào, đồng thời cũng là địa phương đứng thứ hai về dân số với hơn 8 triệu người (năm 2019).'),\n" +
        "('Thành phố Hồ Chí Minh', 1, 'Thành phố Hồ Chí Minh (còn gọi là Sài Gòn) là thành phố lớn nhất tại Việt Nam về dân số và quy mô đô thị hóa. Đây còn là trung tâm kinh tế, chính trị, văn hóa và giáo dục tại Việt Nam. Thành phố Hồ Chí Minh là thành phố trực thuộc trung ương thuộc loại đô thị đặc biệt của Việt Nam cùng với thủ đô Hà Nội. Nằm trong vùng chuyển tiếp giữa Đông Nam Bộ và Tây Nam Bộ, thành phố này hiện có 16 quận, 1 thành phố và 5 huyện, tổng diện tích 2.061 km². Theo kết quả điều tra dân số chính thức vào thời điểm ngày một tháng 4 năm 2009 thì dân số thành phố là 7.162.864 người (chiếm 8,34% dân số Việt Nam), mật độ dân số trung bình 3.419 người/km². Đến năm 2019, dân số thành phố tăng lên 8.993.082 người và cũng là nơi có mật độ dân số cao nhất Việt Nam.'),\n" +
        "('Đà Nẵng', 1, 'Đà Nẵng là một thành phố trực thuộc trung ương, nằm trong vùng Duyên hải Nam Trung Bộ Việt Nam, là thành phố trung tâm và lớn nhất khu vực miền Trung - Tây Nguyên. Thành phố Đà Nẵng là thành phố tổng hợp đa ngành, đa lĩnh vực; trung tâm chính trị - kinh tế - xã hội với vai trò là trung tâm công nghiệp, tài chính, du lịch, dịch vụ, văn hóa, giáo dục - đào tạo, y tế chất lượng cao, khoa học - công nghệ, khởi nghiệp, đổi mới sáng tạo của khu vực Miền Trung - Tây Nguyên và cả nước; trung tâm tổ chức các sự kiện tầm khu vực và quốc tế. Thành phố Đà Nẵng đóng vai trò hạt nhân, quan trọng trong Vùng kinh tế trọng điểm miền Trung, đồng thời cũng là một trong 5 thành phố trực thuộc Trung ương ở Việt Nam, đô thị loại I, trung tâm cấp quốc gia, cùng với Hải Phòng và Cần Thơ.'),\n" +
        "('Cần Thơ', 1, 'Cần Thơ là một thành phố trực thuộc trung ương của Việt Nam, là thành phố hiện đại và phát triển nhất ở Đồng bằng sông Cửu Long, Cần Thơ hiện là đô thị loại I, là trung tâm kinh tế, văn hóa, xã hội, y tế, giáo dục và thương mại của vùng Đồng bằng sông Cửu Long, là thành phố trung tâm cấp vùng và cấp quốc gia cùng với Đà Nẵng, Hải Phòng. Năm 2019, Cần Thơ là đơn vị hành chính Việt Nam đông thứ 24 về số dân, Danh sách đơn vị hành chính Việt Nam theo GRDP xếp thứ 12 về Tổng sản phẩm trên địa bàn (GRDP), xếp thứ 11 về GRDP bình quân đầu người, đứng thứ 40 về tốc độ tăng trưởng GRDP.'),\n" +
        "('Hải Phòng', 1, 'Hải Phòng là thành phố cảng quan trọng, trung tâm công nghiệp, cảng biển, đồng thời cũng là trung tâm kinh tế, văn hóa, y tế, giáo dục, khoa học, thương mại và công nghệ của Vùng duyên hải Bắc Bộ của Việt Nam. Đây là một trong năm thành phố trực thuộc trung ương tại Việt Nam, là đô thị loại I, trung tâm cấp vùng và cấp quốc gia cùng với Đà Nẵng và Cần Thơ. Được thành lập vào năm 1888 khi được tách ra từ một số tiểu khu ven biển của tỉnh Quảng Ninh, Hải Phòng là nơi có vị trí quan trọng, cách Hà Nội 106 km theo Quốc lộ 5A hoặc Xa lộ xuyên Á AH14, về kinh tế, xã hội, công nghệ thông tin và an ninh, quốc phòng của vùng Bắc Bộ và cả nước, trên hai hành lang – một vành đai hợp tác kinh tế Việt Nam-Trung Quốc. Hải Phòng là đầu mối giao thông đường biển phía Bắc.'),\n" +
        "('Thái Bình', 1, 'Thái Bình là một tỉnh ven biển ở đồng bằng sông Hồng. Theo quy hoạch phát triển kinh tế, Thái Bình thuộc vùng duyên hải Bắc Bộ. Theo cuộc tổng điều tra về dân số năm 2019. Tính đến ngày 01/04/2019, Thái Bình là đơn vị hành chính Việt Nam đông thứ 11 về số dân với 1.860.447 người (xếp sau Đắk Lắk và xếp trên Bắc Giang), xếp thứ 29 về Tổng sản phẩm trên địa bàn (GRDP), xếp thứ 49 về GRDP bình quân đầu người, đứng thứ tám về tốc độ tăng trưởng GRDP.'),\n" +
        "('Khánh Hòa', 1, 'Khánh Hòa là một tỉnh duyên hải Nam Trung Bộ, miền Trung Việt Nam. Khánh Hòa ngày nay là phần đất cũ của xứ Kauthara thuộc vương quốc Chăm Pa. Năm 1653, lấy cớ vua Chiêm Thành là Bà Tấm quấy nhiễu dân Việt ở Phú Yên, Chúa Nguyễn Phúc Tần sai quan cai cơ Hùng Lộc đem quân sang đánh chiếm được vùng đất Phan Rang trở ra đến Phú Yên. Năm 1832 , Vua Minh Mạng thành lập tỉnh Khánh Hòa trên cơ sở trấn Bình Hòa. Sau lần hợp nhất vào năm 1975, đến năm 1989, Quốc hội lại chia tỉnh Phú Khánh thành hai tỉnh Phú Yên và Khánh Hòa cho đến ngày nay.'),\n" +
        "('Thừa Thiên Huế', 1, 'Thừa Thiên Huế (còn được viết là Thừa Thiên – Huế) là một tỉnh ven biển nằm ở vùng Bắc Trung Bộ, miền Trung, Việt Nam.'),\n" +
        "('Lâm Đồng', 1, 'Lâm Đồng là một trong năm tỉnh thuộc vùng Tây Nguyên, Việt Nam, đồng thời là tỉnh có diện tích lớn thứ 7 cả nước, tiếp giáp với vùng kinh tế trọng điểm phía nam. Nằm trên cao nguyên cao nhất của Tây Nguyên là Lâm Viên - Di Linh với độ cao 1500 mét so với mực nước biển và là tỉnh duy nhất ở Tây Nguyên không có đường biên giới quốc tế. Tỉnh lỵ là thành phố Đà Lạt nằm cách Thành phố Hồ Chí Minh 300 km về hướng Đông Bắc, cách Huế 745 km về phía nam. Năm 2010, Lâm Đồng là tỉnh đầu tiên của Tây Nguyên có 2 thành phố trực thuộc tỉnh (Đà Lạt, Bảo Lộc).');"
    );

    StringBuilder insertUsers = new StringBuilder(
        "INSERT INTO users (email, password, first_name, last_name, role, country_id) VALUES\n" +
        "('admin@gmail.com', '123456', 'James', 'Gunn', 'admin', 1),\n" +
        "('blogger@gmail.com', '123456', 'Lionel', 'Messi', 'blogger', 1),\n" +
        "('user@gmail.com', '123456', 'Tom', 'Cruise', 'user', 2);"
    );

    StringBuilder insertTours = new StringBuilder(
        "INSERT INTO tours (title, description, duration, price) VALUES\n" +
        "('Du lịch Hà Nội', 'Cùng khám phá mảnh đất thủ đô ngàn năm văn hiến.', 2, 1000000),\n" +
        "('Du lịch Hà Nội - Hải Phòng', 'Cùng khám phá mảnh đất thủ đô ngàn năm văn hiến và Thành phố Hải Phòng.', 4, 1500000),\n" +
        "('Du lịch Đà Nẵng', 'Cùng khám phá thành phố Đà Nẵng tươi đẹp.', 3, 1200000),\n" +
        "('Du lịch Thừa Thiên Huế', 'Cùng khám phá cố đô Huế cổ kính.', 2, 800000),\n" +
        "('Du lịch Đà Nẵng - Thừa Thiên Huế', 'Cùng khám phá cố đô Huế cổ kính và thành phố Đà Nẵng.', 4, 1700000),\n" +
        "('Du lịch Thành phố Hồ Chí Minh', 'Cùng khám phá thành phố Hồ Chí Minh tươi đẹp.', 3, 1000000);"
    );

    StringBuilder insertDestinations = new StringBuilder(
        "INSERT INTO destinations (tour_id, city_id) VALUES \n" +
        "(1, 1),\n" +
        "(2, 1),\n" +
        "(2, 5),\n" +
        "(3, 3),\n" +
        "(4, 8),\n" +
        "(5, 3),\n" +
        "(5, 8),\n" +
        "(6, 2);"
    );

    StringBuilder insertAll = insertCountries
            .append(insertCities)
            .append(insertUsers)
            .append(insertTours)
            .append(insertDestinations);
}
