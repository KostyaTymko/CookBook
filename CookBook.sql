USE [master]
GO
/****** Object:  Database [Cookbook]    Script Date: 09.11.2016 22:28:39 ******/
CREATE DATABASE [Cookbook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cookbook', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Cookbook.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cookbook_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Cookbook_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cookbook] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cookbook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cookbook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cookbook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cookbook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cookbook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cookbook] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cookbook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cookbook] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Cookbook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cookbook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cookbook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cookbook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cookbook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cookbook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cookbook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cookbook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cookbook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cookbook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cookbook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cookbook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cookbook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cookbook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cookbook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cookbook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cookbook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cookbook] SET  MULTI_USER 
GO
ALTER DATABASE [Cookbook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cookbook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cookbook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cookbook] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Cookbook]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 09.11.2016 22:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 09.11.2016 22:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[ShortTitle] [nvarchar](50) NULL,
	[Content] [nvarchar](3000) NULL,
	[Path] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecipeIngredients]    Script Date: 09.11.2016 22:28:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeIngredients](
	[Id_recipe] [int] NULL,
	[Id_ingredients] [int] NULL,
	[Quantity] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Ingredients] ON 

INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (1, N'яблоки')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (2, N'творог')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (3, N'желток')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (4, N'сахар')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (5, N'изюм')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (6, N'сливки')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (7, N'баклажаны')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (8, N'соль')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (9, N'растительное масло')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (10, N'уксус')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (11, N'кипяченая вода')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (12, N'чеснок')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (13, N'укроп')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (14, N'вода')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (15, N'лавровый лист')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (16, N'черный перец горошком')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (17, N'зеленый кориандр')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (18, N'сало')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (19, N'перец чили')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (20, N'мука')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (21, N'разрыхлитель')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (22, N'зеленый лук')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (23, N'молотый кориандр')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (24, N'сливочное масло')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (25, N'молоко')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (26, N'черный перец молотый')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (27, N'слабосоленая семга')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (28, N'сметана')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (29, N'хрен')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (30, N'яйца')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (31, N'томатный сок')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (32, N'твердый сыр')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (33, N'печень трески')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (34, N'плавленый сыр')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (35, N'майонез')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (36, N'перепелиные яйца')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (37, N'крабовые палочки')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (38, N'кукуруза')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (39, N'сельдерей консервированный')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (40, N'пекинская капуста')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (41, N'огурец')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (42, N'куриное филе')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (43, N'грудинка свинная')
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (44, N'прованские травы')
SET IDENTITY_INSERT [dbo].[Ingredients] OFF
SET IDENTITY_INSERT [dbo].[Recipe] ON 

INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (1, N'Печеные яблоки с творогом', N'Печеные яблоки с творогом', N'Это самый полезный десерт для детей и взрослых. В нем привлекательно все: и простота приготовления, и неповторимый аромат и вкус, знакомые с детства, и без сомнения, польза для здоровья.\nТворог протираем через сито. Добавляем желток, сахар, сливки. Все тщательно перемешиваем. Изюм заливаем кипятком на пару минут, просушиваем бумажным полотенцем, выкладываем к творожной массе, перемешиваем. Это наша начинка для яблок. Яблоки промываем водой. Срезаем верхнюю часть (~ 1/3) - это наша крышечка. Осторожно вырезаем середину у оставшегося яблока при помощи ножа и ложки. Чтобы яблоки не потемнели, помещаем их в подкисленный раствор. Для этого в глубокую миску наливаем 1 л воды, в которой растворяем 3 г лимонной кислоты. Готовые яблоки выкладываем в форму для запекания. Наполняем нашей начинкой. Накрываем яблочными крышечками. Запекаем в духовке при 180 градусах 20-25 минут. Вынимаем из духовки, перекладываем на тарелку, даем остыть. Подаем печеные яблоки с медом, джемом или сметаной. Печеные яблоки с творогом готовы!!!', N'/Resources/1.jpg')
INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (2, N'Грудинка свиная, запеченная в духовке', N'Грудинка свиная', N'Свиную грудинку промываем и обсушиваем. Прокалываем мясо в нескольких местах ножом. В проколы вкладываем чеснок. Грудинку обильно солим солью крупного помола со всех сторон. Посыпем черным молотым перцем со всех сторон. Затем посыпаем прованскими травами тоже со всех сторон. Укладываем подготовленное мясо в форму для запекания. Накрываем форму фольгой. Ставим мясо в духовку, разогретую до 200 градусов на 15 мин. Затем уменьшаем температуру до 150 градусов и готовим 1 час 30 мин. Даем мясу остыть. Делаем вдоль косточек надрезы для их удаления. Грудинку кладем в холодильник. Подаем к столу в виде закуски, нарезанной порционными кусочками.', N'/Resources/2.jpg')
INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (3, N'Баклажаны в заливке', N'Баклажаны в заливке', N'Баклажаны нарезаем кружочками толщиной 0,7 мм. Солим, перемешиваем. Даем постоять приблизительно 1 час, чтобы ушла горечь. Сливаем с баклажан образовавшуюся жидкость. Смазываем противень растительным маслом. Каждый кружочек баклажана с двух сторон окунаем в растительное масло. Баклажаны выкладываем на противень. Запекаем в духовке при температуре 180 градусов около 30 минут. Вынимаем из духовки, даем остыть. Пока остывают баклажаны, делаем заливку. Для этого смешиваем растительное масло, уксус, воду. В смесь добавляем укроп и чеснок, выдавленный через чесночницу. Каждый кружочек баклажана окунаем в заливку и складываем в подходящую посуду. Оставшуюся заливку выливаем сверху на баклажаны. Ставим в холодильник. Получилась отличная закуска.', N'/Resources/3.jpg')
INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (4, N'Засолка сала в рапе', N'Засолка сала', N'Сало промываем водой, обсушиваем бумажным полотенцем, режем на куски со стороной ~10 см. Кладем сало в кастрюлю, накрываем крышкой, ставим в холодильник на 12 часов. Готовим рассол. В воду кладем соль, перец, лавровый лист, зерна кориандра. Варим на медленном огне до полного растворения соли (у меня соль так и не растворилась до конца), остужаем. Сало кладем в рассол, накрываем крышкой, оставляем напитываться солью на три дня при комнатной температуре. Каждые 12 часов переворачиваем куски сала с боку на бок. После 3-х суток соления сала вынимаем его из рассола, обсушиваем бумажным полотенцем. Готовим смесь для посыпки сала. В пиалу насыпаем черный перец, кориандр, чеснок, перец чили. Перемешиваем. Посыпаем специями сало со всех сторон. Заворачиваем сало в фольгу, храним в морозильной камере. Вынимаем по одному кусочку для употребления. Сало, засоленное в рапе, готово!!!', N'/Resources/4.jpg')
INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (5, N'Закусочные оладьи с семгой', N'Оладьи с семгой', N'Просеянную муку смешиваем с разрыхлителем, солью, зеленым луком. В другой миске соединяем творожный крем-сыр и сливочное масло, взбивая венчиком. Эти 2 ингредиента должны быть комнатной температуры. Затем добавляем яйцо, продолжая взбивать венчиком. Далее вливаем молоко, перемешиваем. Соединяем яично-молочную смесь с мучной. Тщательно взбиваем венчиком до полного исчезновения комочков. Жарим оладьи на среднем огне в небольшом количестве растительного масла (на 1 порцию оладий ~1/2 ст. л. растительного масла) сначала с одной стороны. Затем – с другой. Выкладываем готовые оладьи на бумажное полотенце для удаления лишнего жира. Оладьи готовы. Готовим соус. Смешиваем сметану с хреном, солим соус по вкусу. Семгу нарезаем тонкими пластинами. На каждый оладий кладем примерно 1 ч. л. соуса, а сверху – семгу. Оладьи с семгой посыпаем мелко нарезанной зеленью укропа и петрушки. Закусочные оладьи с семгой готовы!!!', N'/Resources/5.jpg')
INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (6, N'Закусочные томатные блинчики с печенью трески', N'Томатные блинчики', N'В миску разбиваем яйцо, добавляем соль, сахар, взбиваем венчиком. Наливаем томатный сок (если сок соленый, необходимо уменьшить количество соли в рецепте), взбиваем венчиком. Порциями добавляем просеянную через сито муку. Взбиваем венчиком до полного растворения мучных комочков. Далее порциями наливаем молоко. Тщательно вымешиваем блинное тесто, добавляем растительное масло, перемешиваем. Разогреваем сковородку, смазываем салом или растительным маслом (один раз). Жарим блины с двух сторон. Это наши блины. Готовим начинку. Выкладываем печень трески вместе с маслом в миску, разминаем вилкой. Сыр натираем на мелкой терке, выкладываем к печени, перемешиваем. Яйцо натираем на мелкой терке, кладем сверху, перемешиваем. Начинку ставим в холодильник на 30 минут и более. Фаршируем блины. Берем блин, сворачиваем его пополам и еще пополам. Отрезаем правый угол, получаем прямоугольный блин. Блин разворачиваем, кладем на тарелку, наносим на поверхность начинку. Сворачиваем блин рулетом. Нарезаем его рулетиками толщиной 1,5 см. Так проделываем с остальными блинами. Рулетики выкладываем на блюдо, ставим в холодильник. Перед подачей к столу посыпаем зеленью укропа (петрушки, зеленым луком). Закусочные томатные блинчики с печенью трески готовы!!!', N'/Resources/6.jpg')
INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (7, N'Закуска творожная с чесноком', N'Закуска творожная', N'В творог добавляем размягченное сливочное масло. Взбиваем блендером. Солим, перчим по вкусу. В творожно - сливочную массу добавляем мелко порезанный укроп. Туда же выдавливаем чеснок через чесночницу. Все тщательно перемешиваем. Выкладываем в посуду. Украшаем петрушкой и укропом. К столу подаем в виде канапушек или бутербродов.', N'/Resources/7.jpg')
INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (8, N'Закуска из яиц и плавленых сырков', N'Закуска из яиц и сырков', N'Отвариваем перепелиные (куриные) яйца, очищаем от скорлупы. Плавленые сырки, яйца натираем на средне-мелкой терке. Мелко режем зелень укропа и петрушки. Чеснок выдавливаем через чесночницу. Количество чеснока может быть большее. Перемешиваем все ингредиенты. Добавляем майонез, солим, перемешиваем. Выкладываем в салатницу, украшаем зеленью. Эту закуску можно подавать в виде бутербродов. Кроме того, оригинальным способом подачи к столу будет следующий. На лист салата наносим нашу закуску. Сворачиваем рулетом. Нарезаем рулет кусочками шириной около 1 см. Для большей оригинальности наши закусочные рулетики можно выложить на помидоры, нарезанные полукольцами. Закуска из яиц и плавленых сырков готова!!!', N'/Resources/8.jpg')
INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (9, N'Салат с жареными яйцами', N'Салат с жареными яйцами', N'Каждое яйцо взбиваем венчиком, слегка солим. Жарим, как блины, с двух сторон. Первый блинчик жарим на небольшом количестве растительного масла, следующие блины - без масла. У нас получается 4-5 яичных блинчика. Каждый блинчик сворачиваем в рулет, нарезаем яичную лапшу. Крабовые палочки и сыр нарезаем соломкой. С сельдерея сливаем жидкость, слегка отжимаем. Зеленый лук нарезаем тоненькими полосками. Не забываем про кукурузу. Все ингредиенты смешиваем. Добавляем майонез, перемешиваем. Салат с жареными яйцами готов!!!', N'/Resources/9.jpg')
INSERT [dbo].[Recipe] ([Id], [Title], [ShortTitle], [Content], [Path]) VALUES (10, N'Салат из пекинской капусты', N'Салат из пекинской капусты', N'Нарезаем капусту. Соломкой нарезаем отваренное куриное филе, отваренные яйца и огурец. Мелко нарезаем зелёный лук. Смешиваем все ингредиенты. Заправляем майонезом, солим. Сверху посыпаем укропом.', N'/Resources/10.jpg')
SET IDENTITY_INSERT [dbo].[Recipe] OFF
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (1, 1, N'6 штук')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (1, 2, N'200 г.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (1, 3, N'1 шт.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (1, 4, N'2 ст. ложки')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (1, 6, N'50-60 г.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (1, 5, N'1 ст. ложка')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (2, 43, N'1 кг.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (2, 12, N'2 зубчика')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (2, 8, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (2, 26, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (2, 44, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (3, 7, N'1 кг.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (3, 8, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (3, 9, N'4 ст. ложки')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (3, 10, N'4 ст. ложки')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (3, 14, N'8-ст. ложек')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (3, 12, N'2-3 зубчика')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (4, 18, N'1 кг.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (4, 14, N'1 литр')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (4, 8, N'400 гр.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (4, 15, N'2-3 шт.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (4, 16, N'1 ч. ложка')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (4, 23, N'1 ч. ложка')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (4, 26, N'1 ст. ложка')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (4, 19, N'1/2 ч. ложки')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 20, N'1 ст. ложка')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 21, N'1 и 1/4 ч. ложки')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 8, N'1/4 ч. ложки')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 22, N'1 ст. ложка мелко нарезанного')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 34, N'30 г.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 24, N'15 г.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 30, N'1 шт.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 25, N'3/4 стакана')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 26, N'1 ст. ложка')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 27, N'180-200 г.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 13, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 9, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 28, N'1/2 стакана')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (5, 29, N'1 ч. л.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (6, 30, N'1 шт.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (6, 31, N'1 ст.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (6, 20, N'1 ст.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (6, 8, N'1/4 ч. л.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (6, 4, N'1 ч. л.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (6, 9, N'1 ст. л.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (6, 30, N'1 вареное')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (6, 32, N'150 гр.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (6, 33, N'1 банка 230 г.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (7, 2, N'500 гр.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (7, 24, N'250 гр.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (7, 12, N'3 зубчика')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (7, 8, N'по вкусу')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (7, 26, N'по вкусу')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (7, 13, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (8, 34, N'2 шт.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (8, 36, N'12 шт.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (8, 12, N'3-4 зубчика')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (8, 13, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (8, 35, N'100-120 гр.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (8, 8, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (9, 30, N'4-5 шт.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (9, 37, N'200 г.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (9, 38, N'1 банка')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (9, 32, N'200 г.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (9, 39, N' банка 530 гр.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (9, 22, N'4-5 перьев')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (9, 8, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (10, 40, N'половина качана')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (10, 41, N'2 шт.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (10, 42, N'1 шт.')
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (10, 35, NULL)
INSERT [dbo].[RecipeIngredients] ([Id_recipe], [Id_ingredients], [Quantity]) VALUES (10, 8, NULL)
ALTER TABLE [dbo].[RecipeIngredients]  WITH CHECK ADD  CONSTRAINT [FK_RecipeIngredients_Ingredients] FOREIGN KEY([Id_ingredients])
REFERENCES [dbo].[Ingredients] ([Id])
GO
ALTER TABLE [dbo].[RecipeIngredients] CHECK CONSTRAINT [FK_RecipeIngredients_Ingredients]
GO
ALTER TABLE [dbo].[RecipeIngredients]  WITH CHECK ADD  CONSTRAINT [FK_RecipeIngredients_Recipe] FOREIGN KEY([Id_recipe])
REFERENCES [dbo].[Recipe] ([Id])
GO
ALTER TABLE [dbo].[RecipeIngredients] CHECK CONSTRAINT [FK_RecipeIngredients_Recipe]
GO
USE [master]
GO
ALTER DATABASE [Cookbook] SET  READ_WRITE 
GO
