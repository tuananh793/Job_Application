USE [JobApplication]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/3/2023 10:13:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](32) NULL,
	[Password] [nvarchar](32) NULL,
	[isAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/3/2023 10:13:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](30) NULL,
	[LogoCategory] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 8/3/2023 10:13:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[JobName] [nvarchar](60) NULL,
	[Company] [nvarchar](60) NULL,
	[LogoCompany] [nvarchar](1000) NULL,
	[CategoryID] [int] NULL,
	[Type] [nvarchar](10) NULL,
	[Salary] [bigint] NULL,
	[Description] [nvarchar](max) NULL,
	[JD] [nvarchar](max) NULL,
	[Location] [nvarchar](200) NULL,
	[PublicDate] [date] NULL,
	[ClosingDate] [date] NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 
GO
INSERT [dbo].[Account] ([UserID], [UserName], [Password], [isAdmin]) VALUES (8, N'admin', N'123456', 1)
GO
INSERT [dbo].[Account] ([UserID], [UserName], [Password], [isAdmin]) VALUES (9, N'user', N'123456', 0)
GO
INSERT [dbo].[Account] ([UserID], [UserName], [Password], [isAdmin]) VALUES (10, N'test', N'123456', 1)
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [LogoCategory]) VALUES (1, N'Finance', N'<i class="lni-home"></i>')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [LogoCategory]) VALUES (2, N'Sale & Marketing', N'<i class="lni-world"></i>')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [LogoCategory]) VALUES (3, N'Education & Training', N'<i class="lni-book"></i>')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [LogoCategory]) VALUES (4, N'Technologies', N'<i class="lni-display"></i>')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [LogoCategory]) VALUES (5, N'Art & Design', N'<i class="lni-brush"></i>')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [LogoCategory]) VALUES (6, N'Healthcare', N'<i class="lni-heart"></i>')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [LogoCategory]) VALUES (7, N'Science', N'<i class="lni-funnel"></i>')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [LogoCategory]) VALUES (8, N'Food Services', N'<i class="lni-cup"></i>')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 
GO
INSERT [dbo].[Job] ([JobID], [UserID], [JobName], [Company], [LogoCompany], [CategoryID], [Type], [Salary], [Description], [JD], [Location], [PublicDate], [ClosingDate], [Phone], [Email]) VALUES (14, 8, N'Chuyên gia Trade Marketing (phụ trách Dự án Khách hàng mới)', N'CÔNG TY CỔ PHẦN KINH DOANH F88', N'https://images.careerbuilder.vn/employer_folders/lot4/243284/155x155/130319f88.png', 1, N'PART TIME', 5000, N'- Thực hiện các hoạt động khảo sát thị trường nhằm đánh giá thị hiếu và phân khúc khách hàng phù hợp

- Theo dõi chỉ số khách hàng mới toàn công ty

- Đánh giá hiệu quả các kênh tìm kiếm khách hàng mới

- Đưa ra các đề xuất, định hướng mới để gia tăng khách hàng mới

- Phối hợp với các phòng ban liên quan để xây dựng các chương trình thúc đẩy tìm kiếm thêm khách hàng mới (Tăng trưởng, Bảo hiểm, VAS, Kinh doanh,…)

- Tham gia các hoạt động chung nhằm đào tạo chuyên môn và xây dựng văn hóa doanh nghiệp

- Thực hiện các yêu cầu khác của quản lý', N'OK', N'Hà Nội', CAST(N'2023-08-03' AS Date), CAST(N'2023-08-10' AS Date), N'0936460232', N'phamtuananh4567@gmail.com')
GO
INSERT [dbo].[Job] ([JobID], [UserID], [JobName], [Company], [LogoCompany], [CategoryID], [Type], [Salary], [Description], [JD], [Location], [PublicDate], [ClosingDate], [Phone], [Email]) VALUES (15, 8, N'Chuyên viên Khách hàng cá nhân - CN. Hà Nội', N'NGÂN HÀNG TMCP QUÂN ĐỘI', N'https://images.careerbuilder.vn/employer_folders/lot0/99440/155x155/134506mb-logo-main-01.png', 2, N'FULL TIME', 1000, N'MB là một định chế vững về tài chính, mạnh về quản lý, minh bạch về thông tin, thuận tiện và tiên phong trong cung cấp dịch vụ để thực hiện được sứ mệnh của mình, là một tổ chức, một đối tác Vững vàng, tin cậy.

Trong suốt quá trình hình thành và phát triển, dưới sự lãnh đạo, chỉ đạo của Quân ủy Trung ương - Bộ Quốc phòng, Ngân hàng nhà nước và sự hỗ trợ, giúp đỡ tận tình của các cơ quan hữu quan; đơn vị trong và ngoài quân đội; Ngân hàng TMCP Quân Đội (MB) đã phát huy bản chất tốt đẹp và truyền thống vẻ vang của người chiến sỹ trên mặt trận kinh tế; đoàn kết, chủ động, sáng tạo, tự lực, tự cường, khắc phục khó khăn, cải tiến chất lượng hoạt động đưa các sản phẩm dịch vụ Ngân hàng tốt nhất đến với các cá nhân, tổ chức kinh tế, các doanh nghiệp trên khắp các tỉnh, thành trọng điểm của cả nước, góp phần đẩy mạnh công cuộc phát triển kinh tế của Việt Nam nói chung và nâng cao hiệu quả kinh doanh của ngành Ngân hàng nói riêng.', N'Tốt Nghiệp đại học', N'MB Tower, 18 Lê Văn Lương, Trung Hòa, Cầu Giấy, Hà Nội', CAST(N'2023-08-03' AS Date), CAST(N'2023-09-08' AS Date), N'0936460232', N'phamtuananh4567@gmail.com')
GO
INSERT [dbo].[Job] ([JobID], [UserID], [JobName], [Company], [LogoCompany], [CategoryID], [Type], [Salary], [Description], [JD], [Location], [PublicDate], [ClosingDate], [Phone], [Email]) VALUES (16, 8, N'Điều dưỡng viên', N'CÔNG TY CỔ PHẦN DJET GROUP', N'https://images.careerbuilder.vn/employer_folders/lot7/285677/148x148/114843z3723300499458_614ca7e6e09afa13ccba2b8a696aecf9.jpg', 6, N'FULL TIME', 500, N'Là một trong những trung tâm nha khoa thẩm mỹ uy tín hiện nay, vớI tỉ lệ khách hàng truyền miệng ấn tượng, và nhận được sự tin tưởng của nhiều nghệ sĩ nổI tiếng, các doanh nhân thành đạt, hoa hậu, người mẫu và ngay cả các khách hang khó tính nhất. ĐộI ngũ bác sĩ Jet Dentist luôn kỳ công lựa chọn và tư vấn những khuôn răng phù hợp nhất vớI vóc dáng, kiểu tóc, nước da của khách hàng, bởI cáI đẹp đâu chỉ là sự ghép nốI những thứ hoàn hảo riêng rẽ mà phảI là sự hàI hòa đến từng chi tiết trong một tổng thể.

', N'Kênh tuyển dụng: https://www.facebook.com/JetDentistLifestyle', N'Số 66 Xuân Diệu, Phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội, Việt Nam', CAST(N'2023-08-03' AS Date), CAST(N'2023-08-13' AS Date), N'0936460232', N'phamtuananh4567@gmail.com')
GO
INSERT [dbo].[Job] ([JobID], [UserID], [JobName], [Company], [LogoCompany], [CategoryID], [Type], [Salary], [Description], [JD], [Location], [PublicDate], [ClosingDate], [Phone], [Email]) VALUES (17, 8, N'Nhân Viên Thiết Kế Đồ Họa', N'Công Ty TNHH Truyền Thông Kilala', N'https://images.careerbuilder.vn/employer_folders/lot3/231183/155x155/91545capture.png', 5, N'PART TIME', 1500, N'1. Thiết kế ấn phẩm cho social networks

- Thiết kế Website, Fanpage, Instagram, Youtube banner flash, popup, email template…

- Nâng cấp giao diện website tối ưu hơn.

2. Hỗ trợ hoạt động Marketing–truyền thông

- Thiết kế hình hiệu, hình cắt, trailer.

- Brainstorming, đưa ra concept và phát triển ý tưởng cho dự án.

- Phối hợp team Marketing hỗ trợ chụp ảnh, quay phim, dựng video…

3. Thiết kế cho sự kiện (từ poster, key visual, backdrop, cổng,..)

3. Thiết kế tạp chí

- Layout tạp chí

- Vẽ bìa tạp chí

4. Thiết kế tất cả vật phẩm in ấn

- Thiết kế logo, catalogue, brochure, poster, bandroll, tờ rơi, standee, profile, banner, backdrop, leaflet….

5. Quản lý chất lượng in

- Giám sát các hoạt động in ấn

6. Các công việc khác

- Quản lý, lưu trữ file thiết kế

- Triển khai các hạng mục thiết kế, hoàn thiện sản phẩm thiết kế.

- Hướng dẫn công việc cho nhân viên khác khi có yêu cầu.

- Báo cáo, thực hiện các công việc khác theo yêu cầu của cấp quản lý.', N'- Tốt nghiệp chuyên ngành Đồ Họa và có ít nhất kinh nghiệm ở vị trí thiết kế.

- Có tư duy sáng tạo và thẩm mỹ tốt.

- Có kinh nghiệm thiết kế mảng Brand Identity, Website (UI/UX) và Graphic design.

- Thành thạo Photoshop, Illustrator và Indesign

- Có kỹ năng vẽ Digital là một lợi thế.

- Có kinh nghiệm thiết kế và quản lý chất lượng trong mảng in ấn.

- Có tinh thần học hỏi và tìm tòi, nắm bắt những xu hướng mới, đặc biệt mang phong cách Nhật Bản.

- Quản lý thời gian tốt. Làm việc độc lập và theo nhóm, chịu được áp lực.

- Có khả năng làm việc nhóm và có tinh thần trách nhiệm với công việc, đi đến cùng với dự án.', N'Lầu 3, Tòa nhà Copac Square, 12 Tôn Đản, Quận 4, TP. HCM.', CAST(N'2023-08-03' AS Date), CAST(N'2023-08-24' AS Date), N'0936460232', N'phamtuananh4567@gmail.com')
GO
INSERT [dbo].[Job] ([JobID], [UserID], [JobName], [Company], [LogoCompany], [CategoryID], [Type], [Salary], [Description], [JD], [Location], [PublicDate], [ClosingDate], [Phone], [Email]) VALUES (18, 8, N'.Net Backend Developer', N'Un-Available LTD Co.,', N'https://cdn-new.topcv.vn/unsafe/150x/filters:format(webp)/https://static.topcv.vn/company_logos/XhJKdpN5A9X18pEleKfH8WgaL7yIMYU5_1632991535____96a39f81a39525577ac3e23ce1f4f67e.jpg', 4, N'FULL TIME', 5000, N'Sử dụng các công cụ (tools), nền tảng (framework) của MICROSOFT (visual studio, visual code, .net framework) để lập trình phần mềm cho khách hàng và sản phẩm của công ty.
Tham gia phân tích thiết kế hệ thống, thiết kế Database, thiết kế chi tiết.
Tham gia lập trình, kiểm thử sản phẩm Web Application (.NET Framework, .Net Core), Winform Application.
Sử dụng các ngôn ngữ, framework: Winform, ASP NET, Webform, MVC, Angular2+, Html/Css, Jquery ...
Trực tiếp tham gia phát triển các sản phẩm mới và bảo trì (maintain) các sản phẩm của công ty.
Thực hiện tích hợp các chức năng của phần mềm thứ 3 vào hệ thống của công t', N'Có ít nhất 2 - 3 năm kinh nghiệm và kiến thức về lập trình:
                 - Back-end: C#, Net framework, ASP NET (Webforms, MVC, Core)
                 - Database: MS SQL server

Có kinh nghiệm phát triển dự án ERP làm việc với các thiết bị tự động hóa, Barcode scanner, PDA, băng tải, PLC là một lợi thế.
Tiếp thu và xử lý nhanh các vấn đề có liên quan hệ thống phần mềm quản lý tại nhà máy.
Có khả năng liên kết, phân tích các mô hình dữ liệu.
**AT UN-AVAILABLE IS AN EQUAL OPPORTUNITY ORGANIZATION AND WILL NOT ALLOW DISCRIMINATION BASED UPON AGE, ETHNICITY, ANCESTRY, GENDER, NATIONAL ORIGIN, DISABILITY, RACE, SIZE, RELIGION, SEXUAL ORIENTATION, SOCIOECONOMIC BACKGROUND, OR ANY OTHER STATUS PROHIBITED BY APPLICABLE LAW.', N'Hồ Chí Minh', CAST(N'2023-08-03' AS Date), CAST(N'2023-08-24' AS Date), N'0936460232', N'phamtuananh4567@gmail.com')
GO
INSERT [dbo].[Job] ([JobID], [UserID], [JobName], [Company], [LogoCompany], [CategoryID], [Type], [Salary], [Description], [JD], [Location], [PublicDate], [ClosingDate], [Phone], [Email]) VALUES (19, 8, N'Full-Stack Tech Lead ( Java /Reactjs) - Hà Nội ', N'FPT', N'https://cdn-new.topcv.vn/unsafe/150x/filters:format(webp)/https://static.topcv.vn/company_logos/cong-ty-tnhh-he-thong-thong-tin-fpt-d017481a2dbf82212778925604685a1e-64a78d73e3cf2.jpg', 4, N'FULL TIME', 4500, N'Lập trình trong các dự án phần mềm sử dụng ngôn ngữ Java, ReactJS, bao gồm các sản phẩm phục vụ hoạt động sản xuất kinh doanh Bất động sản
Thiết kế tổng thể, thiết kế chi tiết (màn hình, api, cơ sở dữ liệu, luồng dữ liệu…) các module chức năng của phần mềm để đảm bảo các chỉ tiêu chức năng và phi chức năng (như đáp ứng hiệu năng, tính mở rộng..)
Chịu trách nhiệm triển khai và hỗ trợ sau triển khai các phần mềm. Xử lý phản ánh người dùng cuối và sửa các lỗi về tính năng, hiệu năng, kiến trúc của phần mềm.
Quản lý nhóm cán bộ lập trình của dự án, chịu trách nhiệm giao việc, quản lý tiến độ chất lượng công việc của nhóm, báo cáo lên quản trị dự án và giám đốc sản phẩm. 
Đào tạo, hỗ trợ thành viên để nâng cao chất lượng nhóm. Nghiên cứu và phát triển công nghệ mới giúp tăng hiệu suất cho dự án.', N'Có từ 3 năm kinh nghiệm trở lên với các nền tảng và framework công nghệ Java, 2 năm kinh nghiệm trở lên với các nền tảng web ReactJS.
Nắm vững các kiến thức cơ bản về lập trình hướng đối tượng, lập trình Java core (multithreading, Collection…)  /Web ReactJS (typescript)
Midware: Kafka, Redis, S3, BPMN engine…
Đã làm việc với các hệ quản trị  Cơ sở dữ liệu: SQL, MySQL, MongoDB,...
Devops: Gitlab, Kubernetes, Linux.', N'Hà Nội', CAST(N'2023-08-03' AS Date), CAST(N'2023-09-13' AS Date), N'0936460232', N'phamtuananh4567@gmail.com')
GO
INSERT [dbo].[Job] ([JobID], [UserID], [JobName], [Company], [LogoCompany], [CategoryID], [Type], [Salary], [Description], [JD], [Location], [PublicDate], [ClosingDate], [Phone], [Email]) VALUES (20, 9, N'[HCM_THỦ ĐỨC] - NHÂN VIÊN NHÀ HÀNG - KFC LÊ VĂN VIỆT', N'KFC LÊ VĂN VIỆT', N'https://upload.wikimedia.org/wikipedia/vi/thumb/7/7e/Logo_KFC.svg/1200px-Logo_KFC.svg.png', 8, N'PART TIME', 500, N'Phục vụ khách hàng theo tiêu chuẩn của KFC:
Đón tiếp và phục vụ khách hàng trong khu vực ăn uống;
Tiếp nhận đặt phần ăn và tính tiền cho khách tại quầy;
Đảm bảo vệ sinh trong khu vực Nhà hàng;
Các công việc khác theo yêu cầu của Quản lý Nhà hàng', N'Độ tuổi từ 15 tuổi đến 40 tuổi, sinh viên các trường
Tác phong tốt, thân thiện, yêu thích công việc phục vụ khách hàng
Có thể làm việc xoay ca
 , tối thiểu 4 - 6 h/ngày
, ưu tiên làm được các ngày cuối tuần, Lễ/Tết', N'HCM_THỦ ĐỨC', CAST(N'2023-08-03' AS Date), CAST(N'2023-09-06' AS Date), N'0936460232', N'phamtuananh4567@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [fk_product_1] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [fk_product_1]
GO
