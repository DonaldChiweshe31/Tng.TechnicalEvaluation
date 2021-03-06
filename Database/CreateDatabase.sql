USE [master]
GO

CREATE DATABASE [BillOfMaterials]
GO

USE [BillOfMaterials]
GO

CREATE TABLE [dbo].[Parts]
(
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentId] [bigint] NULL,
	[Number] [varchar](20) NOT NULL,
	[Description] [varchar](1024) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET IDENTITY_INSERT [dbo].[Parts] ON 

GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (1, NULL, N'PRT-0001', N'DeLorean', 1, CAST(20.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (2, 1, N'PRT-0002', N'Flux Capacitor', 1, CAST(15.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (3, 1, N'PRT-0003', N'Door', 2, CAST(75.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (4, 2, N'PRT-0004', N'Fuel Cell', 4, CAST(23.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (5, 3, N'PRT-0005', N'Gyro', 1, CAST(5.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (6, 2, N'PRT-0006', N'Inverter', 1, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (7, 4, N'PRT-0007', N'Titanium Casing', 6, CAST(14.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (8, 4, N'PRT-0008', N'Switch', 4, CAST(22.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (9, 5, N'PRT-0009', N'Special Receptacle', 5, CAST(10.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Parts] ([Id], [ParentId], [Number], [Description], [Quantity], [Cost]) VALUES (10, 9, N'PRT-0010', N'Titianium Screw', 10, CAST(2.50 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Parts] OFF
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Parts] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Parts] ([Id])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Parts]
GO
