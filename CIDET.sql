USE [Prueba_CIDET]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 6/02/2021 5:19:30 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Datos]    Script Date: 6/02/2021 5:19:30 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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
SET IDENTITY_INSERT [dbo].[Clientes] OFF
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
ALTER TABLE [dbo].[Datos]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO

--Nombre de las mujeres que tienen mascota en bogotá--

Select C.ClienteID idCliente, C.Nombre NombreCliente,  M.Valor Género , A.Valor Mascota,  B.Valor Ciudad from 
(Select * from Clientes) C inner join
(Select * from Datos where Valor='F') M on C.ClienteID=M.ClienteID INNER JOIN
(Select * from Datos where Valor='Si') A on C.ClienteID=A.ClienteID INNER JOIN
(Select * from Datos where Valor='Bogotá') B on C.ClienteID=B.ClienteID

--Cuantas personas hay por Ciudad--

Select count(Valor) CantidadPersonas, Valor Ciudad from Datos where Variable='Ciudad' group by Valor

--Número maximo de mascotas que hay por Género--

Select G.Valor Género, (count(G.Valor)) CantidadMascotas from 
(Select * from Datos where Valor='Si')M INNER JOIN
(Select * from Datos where Variable='Género')G ON M.ClienteID=G.ClienteID
Group By G.Valor ORDER BY CantidadMascotas DESC

--Promedio de Mascotas por Ciudad--


SELECT AVG(A.CantidadMascotas) PromeidoMascotas, B.Ciudad FROM 
(SELECT 1 CantidadMascotas, ClienteID FROM Datos WHERE Valor='Si')A INNER JOIN
(SELECT ClienteID, Valor Ciudad FROM Datos WHERE Variable='Ciudad')B ON A.ClienteID=B.ClienteID
GROUP BY B.Ciudad

/*CREAR UN NUEVO CLIENTE*/

INSERT INTO Clientes VALUES ('Adrian')

/*ACTUALIZAR UN CLIENTE ESPECÍFICO*/

UPDATE Clientes SET Nombre='Adrián Ramírez' WHERE ClienteID=10

/*ELIMINAR UN CLIENTE*/

DELETE Clientes WHERE ClienteID=10

/*CREAR UN NUEVO DATO*/

INSERT INTO Datos VALUES (10,'Ciudad','Medellín')

/*ACTUALIZAR UN DATO ESPECÍFICO*/

UPDATE Datos SET Valor='Si', Variable='Mascota' where ClienteID='10' and Valor='Medellín'

/*ELIMINAR UN DATO*/

DELETE Datos WHERE ClienteID=10 AND Valor='Si'

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


CREATE TRIGGER [dbo].[TR_ClientesActualizados]
on [dbo].[Clientes] for Update
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se actualizó nuevo Cliente el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))

CREATE TRIGGER [dbo].[TR_ClientesEliminados]
on [dbo].[Clientes] for Delete
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se eliminó un Cliente el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))

CREATE TRIGGER [dbo].[TR_ClientesInsertados]
on [dbo].[Clientes] for Insert
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se insertó nuevo Cliente el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))

CREATE TRIGGER [dbo].[TR_DatosActualizados]
on [dbo].[Datos] for Update
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se actualizó nuevo Dato el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))

CREATE TRIGGER [dbo].[TR_DatosEliminados]
on [dbo].[Datos] for Delete
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se eliminó un Dato el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))

CREATE TRIGGER [dbo].[TR_DatosInsertados]
on [dbo].[Datos] for Insert
AS
INSERT INTO Auditoria VALUES (GETDATE(), 'Se insertó nuevo Dato el dia '+CONVERT(VARCHAR(10), CONVERT(date, GETDATE()))+' a las '+CONVERT(VARCHAR(8),CONVERT(TIME, GETDATE())))