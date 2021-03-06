USE [i2SWhereRU]
GO
/****** Object:  Table [dbo].[Maps]    Script Date: 08/02/2018 22:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maps](
	[m_id] [int] IDENTITY(1,1) NOT NULL,
	[m_description] [varchar](50) NULL,
	[m_image_location] [varchar](500) NULL,
 CONSTRAINT [PK_Maps] PRIMARY KEY CLUSTERED 
(
	[m_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 08/02/2018 22:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[p_id] [int] IDENTITY(1,1) NOT NULL,
	[p_name] [varchar](100) NULL,
	[p_image_location] [varchar](500) NULL,
	[p_location_city] [varchar](50) NULL,
	[p_location_map_id] [int] NOT NULL,
	[p_location_station_id] [int] NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stations]    Script Date: 08/02/2018 22:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stations](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[s_map_id] [int] NOT NULL,
	[s_description] [varchar](500) NULL,
	[s_image_location] [varchar](500) NULL,
	[s_X_position] [int] NULL,
	[s_Y_position] [int] NULL,
	[s_Z_position] [int] NULL,
 CONSTRAINT [PK_Stations] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Maps] ON 

INSERT [dbo].[Maps] ([m_id], [m_description], [m_image_location]) VALUES (1, N'Piso RC', N'img/Porto-piso-0.png')
INSERT [dbo].[Maps] ([m_id], [m_description], [m_image_location]) VALUES (2, N'Piso 1', N'img/Porto-piso-1.png')
INSERT [dbo].[Maps] ([m_id], [m_description], [m_image_location]) VALUES (3, N'Piso 2', N'img/Porto-piso-2.png')
INSERT [dbo].[Maps] ([m_id], [m_description], [m_image_location]) VALUES (4, N'Piso 3', N'img/Porto-piso-3.png')
INSERT [dbo].[Maps] ([m_id], [m_description], [m_image_location]) VALUES (5, N'Fabrica OpenSpace', N'img/fabrica-openspace.png')
INSERT [dbo].[Maps] ([m_id], [m_description], [m_image_location]) VALUES (6, N'Fabrica RC', N'img/fabrica-rc.png')
INSERT [dbo].[Maps] ([m_id], [m_description], [m_image_location]) VALUES (7, N'Fabrica Piso 1', N'img/fabrica-piso1.png')
SET IDENTITY_INSERT [dbo].[Maps] OFF
SET IDENTITY_INSERT [dbo].[Stations] ON 

INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (1, 3, N'3A1', N'img/Workstation_DOWN.png', 3, 10, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (2, 3, N'3A2', N'img/Workstation_DOWN.png', 43, 10, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (3, 3, N'3A3', N'img/Workstation_DOWN.png', 83, 10, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (4, 3, N'3A4', N'img/Workstation_DOWN.png', 123, 10, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (5, 3, N'3B1', N'img/Workstation_UP.png', 3, 50, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (6, 3, N'3B2', N'img/Workstation_UP.png', 43, 50, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (7, 3, N'3B3', N'img/Workstation_UP.png', 83, 50, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (8, 3, N'3B4', N'img/Workstation_UP.png', 123, 50, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (9, 3, N'3C1', N'img/Workstation_DOWN.png', 3, 120, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (10, 3, N'3C2', N'img/Workstation_DOWN.png', 43, 120, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (11, 3, N'3C3', N'img/Workstation_DOWN.png', 83, 120, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (12, 3, N'3C4', N'img/Workstation_DOWN.png', 123, 120, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (13, 3, N'3D1', N'img/Workstation_UP.png', 3, 160, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (14, 3, N'3D2', N'img/Workstation_UP.png', 43, 160, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (15, 3, N'3D3', N'img/Workstation_UP.png', 83, 160, 0)
INSERT [dbo].[Stations] ([s_id], [s_map_id], [s_description], [s_image_location], [s_X_position], [s_Y_position], [s_Z_position]) VALUES (16, 3, N'3D4', N'img/Workstation_UP.png', 123, 160, 0)
SET IDENTITY_INSERT [dbo].[Stations] OFF
ALTER TABLE [dbo].[Persons]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Maps] FOREIGN KEY([p_location_map_id])
REFERENCES [dbo].[Maps] ([m_id])
GO
ALTER TABLE [dbo].[Persons] CHECK CONSTRAINT [FK_Persons_Maps]
GO
ALTER TABLE [dbo].[Persons]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Stations] FOREIGN KEY([p_location_station_id])
REFERENCES [dbo].[Stations] ([s_id])
GO
ALTER TABLE [dbo].[Persons] CHECK CONSTRAINT [FK_Persons_Stations]
GO
ALTER TABLE [dbo].[Stations]  WITH CHECK ADD  CONSTRAINT [FK_Stations_Maps] FOREIGN KEY([s_map_id])
REFERENCES [dbo].[Maps] ([m_id])
GO
ALTER TABLE [dbo].[Stations] CHECK CONSTRAINT [FK_Stations_Maps]
GO
