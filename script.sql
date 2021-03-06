USE [Prueba_CIDET]
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Mensaje] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Auditoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Datos]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos](
	[ClienteID] [int] NOT NULL,
	[Variable] [varchar](50) NOT NULL,
	[Valor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Datos] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC,
	[Variable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[CodigoDeptartamento] [varchar](2) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[CodigoDeptartamento] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Departamento] [varchar](50) NOT NULL,
	[CodigoDANE] [varchar](5) NOT NULL,
	[DistritoCapital] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Municipios] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[Departamento] ASC,
	[CodigoDANE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Auditoria] ON 

INSERT [dbo].[Auditoria] ([id], [Fecha], [Mensaje]) VALUES (1, CAST(N'2021-02-06T05:57:15.587' AS DateTime), N'Se insertó nuevo Cliente el dia 2021-02-06 a las 05:57:15')
INSERT [dbo].[Auditoria] ([id], [Fecha], [Mensaje]) VALUES (2, CAST(N'2021-02-06T05:57:15.593' AS DateTime), N'Se actualizó nuevo Cliente el dia 2021-02-06 a las 05:57:15')
INSERT [dbo].[Auditoria] ([id], [Fecha], [Mensaje]) VALUES (3, CAST(N'2021-02-06T05:57:15.600' AS DateTime), N'Se insertó nuevo Dato el dia 2021-02-06 a las 05:57:15')
INSERT [dbo].[Auditoria] ([id], [Fecha], [Mensaje]) VALUES (4, CAST(N'2021-02-06T05:57:15.603' AS DateTime), N'Se actualizó nuevo Dato el dia 2021-02-06 a las 05:57:15')
INSERT [dbo].[Auditoria] ([id], [Fecha], [Mensaje]) VALUES (5, CAST(N'2021-02-06T05:57:15.607' AS DateTime), N'Se eliminó un Dato el dia 2021-02-06 a las 05:57:15')
INSERT [dbo].[Auditoria] ([id], [Fecha], [Mensaje]) VALUES (6, CAST(N'2021-02-06T05:57:15.607' AS DateTime), N'Se eliminó un Cliente el dia 2021-02-06 a las 05:57:15')
SET IDENTITY_INSERT [dbo].[Auditoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (1, N'Juan')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (2, N'Pepe')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (3, N'María')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (4, N'Jose')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (5, N'David')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (6, N'Jaime')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (7, N'Diana')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (8, N'Ivan')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (9, N'Cata')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (10, N'Adrián Ramírez')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (1, N'Ciudad', N'Bogotá')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (1, N'Género', N'M')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (1, N'Mascota', N'Si')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (2, N'Ciudad', N'Cali')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (2, N'Género', N'M')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (2, N'Mascota', N'Si')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (3, N'Ciudad', N'Bogotá')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (3, N'Género', N'F')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (3, N'Mascota', N'Si')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (4, N'Ciudad', N'Medellín')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (4, N'Género', N'M')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (4, N'Mascota', N'No')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (5, N'Ciudad', N'Medellín')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (5, N'Género', N'M')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (5, N'Mascota', N'Si')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (6, N'Ciudad', N'Barranquilla')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (6, N'Género', N'M')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (6, N'Mascota', N'No')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (7, N'Ciudad', N'Cali')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (7, N'Género', N'F')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (7, N'Mascota', N'No')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (8, N'Ciudad', N'Bogotá')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (8, N'Género', N'M')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (8, N'Mascota', N'No')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (9, N'Ciudad', N'Medellín')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (9, N'Género', N'F')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (9, N'Mascota', N'Si')
INSERT [dbo].[Datos] ([ClienteID], [Variable], [Valor]) VALUES (10, N'Mascota', N'Si')
GO
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'05', N'ANTIOQUIA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'08', N'ATLANTICO')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'11', N'BOGOTA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'13', N'BOLIVAR')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'15', N'BOYACA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'17', N'CALDAS')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'18', N'CAQUETA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'19', N'CAUCA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'20', N'CESAR')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'23', N'CORDOBA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'25', N'CUNDINAMARCA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'27', N'CHOCO')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'41', N'HUILA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'44', N'LA GUAJIRA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'47', N'MAGDALENA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'50', N'META')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'52', N'NARIÑO')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'54', N'N. DE SANTANDER')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'63', N'QUINDIO')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'66', N'RISARALDA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'68', N'SANTANDER')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'70', N'SUCRE')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'73', N'TOLIMA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'76', N'VALLE DEL CAUCA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'81', N'ARAUCA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'85', N'CASANARE')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'86', N'PUTUMAYO')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'88', N'SAN ANDRES')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'91', N'AMAZONAS')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'94', N'GUAINIA')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'95', N'GUAVIARE')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'97', N'VAUPES')
INSERT [dbo].[Departamento] ([CodigoDeptartamento], [Nombre]) VALUES (N'99', N'VICHADA')
GO
SET IDENTITY_INSERT [dbo].[Municipios] ON 

INSERT [dbo].[Municipios] ([id], [Nombre], [Departamento], [CodigoDANE], [DistritoCapital]) VALUES (1, N'Medellin', N'Antioquia', N'05001', N'Si        ')
INSERT [dbo].[Municipios] ([id], [Nombre], [Departamento], [CodigoDANE], [DistritoCapital]) VALUES (2, N'Bogotá Capital', N'BOGOTA', N'11001', N'Si        ')
INSERT [dbo].[Municipios] ([id], [Nombre], [Departamento], [CodigoDANE], [DistritoCapital]) VALUES (3, N'Abejorral', N'Antioquia', N'05002', N'No        ')
INSERT [dbo].[Municipios] ([id], [Nombre], [Departamento], [CodigoDANE], [DistritoCapital]) VALUES (4, N'Barranquilla', N'Atlántico', N'08001', N'Si        ')
SET IDENTITY_INSERT [dbo].[Municipios] OFF
GO
ALTER TABLE [dbo].[Datos]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
/****** Object:  StoredProcedure [dbo].[Departamentos_Lista]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Departamentos_Lista]

AS

SELECT * FROM Departamento
GO
/****** Object:  StoredProcedure [dbo].[Municipios_CRUD]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Municipios_CRUD](

@opc int,
@id int,
@Nombre varchar(50),
@Departamento varchar(50),
@CodigoDANE varchar(5),
@DistritoCapital Varchar(2)

)
	
AS

/*CREATE*/
IF @opc=1 BEGIN

   INSERT INTO Municipios 
   SELECT  @Nombre, @Departamento, @CodigoDANE, @DistritoCapital
END

/*READ*/
IF @opc=2 BEGIN

   SELECT id, Nombre, Departamento, CodigoDANE, DistritoCapital FROM Municipios

END

/*READ BY ID*/
IF @opc=3 BEGIN

    SELECT id, Nombre, Departamento, CodigoDANE, DistritoCapital FROM Municipios WHERE id=@id

END

/*UPDATE*/
IF @opc=4 BEGIN 

   UPDATE Municipios
   SET Nombre=@Nombre, Departamento=@Departamento,CodigoDANE=@CodigoDANE, DistritoCapital=@DistritoCapital
   WHERE id=@id

END

/*DELETE*/
IF @opc=5 BEGIN

   DELETE Municipios WHERE id=@id

END
GO
/****** Object:  Trigger [dbo].[TR_ClientesActualizados]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_ClientesActualizados]
on [dbo].[Clientes] for Update
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se actualizó nuevo Cliente el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))
GO
ALTER TABLE [dbo].[Clientes] ENABLE TRIGGER [TR_ClientesActualizados]
GO
/****** Object:  Trigger [dbo].[TR_ClientesEliminados]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_ClientesEliminados]
on [dbo].[Clientes] for Delete
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se eliminó un Cliente el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))
GO
ALTER TABLE [dbo].[Clientes] ENABLE TRIGGER [TR_ClientesEliminados]
GO
/****** Object:  Trigger [dbo].[TR_ClientesInsertados]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_ClientesInsertados]
on [dbo].[Clientes] for Insert
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se insertó nuevo Cliente el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))
GO
ALTER TABLE [dbo].[Clientes] ENABLE TRIGGER [TR_ClientesInsertados]
GO
/****** Object:  Trigger [dbo].[TR_DatosActualizados]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DatosActualizados]
on [dbo].[Datos] for Update
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se actualizó nuevo Dato el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))
GO
ALTER TABLE [dbo].[Datos] ENABLE TRIGGER [TR_DatosActualizados]
GO
/****** Object:  Trigger [dbo].[TR_DatosEliminados]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DatosEliminados]
on [dbo].[Datos] for Delete
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se eliminó un Dato el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))
GO
ALTER TABLE [dbo].[Datos] ENABLE TRIGGER [TR_DatosEliminados]
GO
/****** Object:  Trigger [dbo].[TR_DatosInsertados]    Script Date: 7/02/2021 1:57:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DatosInsertados]
on [dbo].[Datos] for Insert
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se insertó nuevo Dato el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))
GO
ALTER TABLE [dbo].[Datos] ENABLE TRIGGER [TR_DatosInsertados]
GO
