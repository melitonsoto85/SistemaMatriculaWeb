USE [master]
GO
/****** Object:  Database [BDMatricula]    Script Date: 25/11/2020 23:32:31 ******/
CREATE DATABASE [BDMatricula]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDMatricula', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BDMatricula.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDMatricula_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BDMatricula_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BDMatricula] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDMatricula].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDMatricula] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDMatricula] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDMatricula] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDMatricula] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDMatricula] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDMatricula] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDMatricula] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDMatricula] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDMatricula] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDMatricula] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDMatricula] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDMatricula] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDMatricula] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDMatricula] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDMatricula] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDMatricula] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDMatricula] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDMatricula] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDMatricula] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDMatricula] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDMatricula] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDMatricula] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDMatricula] SET RECOVERY FULL 
GO
ALTER DATABASE [BDMatricula] SET  MULTI_USER 
GO
ALTER DATABASE [BDMatricula] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDMatricula] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDMatricula] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDMatricula] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDMatricula] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDMatricula', N'ON'
GO
ALTER DATABASE [BDMatricula] SET QUERY_STORE = OFF
GO
USE [BDMatricula]
GO
/****** Object:  Table [dbo].[TblCiclo]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCiclo](
	[IdCiclo] [int] IDENTITY(1,1) NOT NULL,
	[Ciclo] [char](3) NOT NULL,
 CONSTRAINT [IdCicloPk] PRIMARY KEY CLUSTERED 
(
	[IdCiclo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCurso]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCurso](
	[IdCurso] [int] IDENTITY(1,1) NOT NULL,
	[NombreCurso] [varchar](50) NOT NULL,
	[Creditos] [int] NOT NULL,
	[IdTipoCurso] [int] NOT NULL,
	[IdPlanEstudio] [int] NOT NULL,
 CONSTRAINT [IdCursoPk] PRIMARY KEY CLUSTERED 
(
	[IdCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDetServicio]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDetServicio](
	[IdDetServicio] [int] IDENTITY(1,1) NOT NULL,
	[IdServicio] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[FEmision] [date] NOT NULL,
	[HVencimiento] [time](7) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [IdDetServicioPk] PRIMARY KEY CLUSTERED 
(
	[IdDetServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEspecialidad]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEspecialidad](
	[IdEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[Especialidad] [varchar](30) NOT NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [IdEspecialidadPk] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMatricula]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMatricula](
	[IdMatricula] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdCiclo] [int] NOT NULL,
	[IdTurno] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[FechaMatricula] [date] NOT NULL,
	[HoraMatricula] [time](7) NOT NULL,
	[IdPago] [int] NOT NULL,
 CONSTRAINT [IdMatriculaPk] PRIMARY KEY CLUSTERED 
(
	[IdMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMenuSistema]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMenuSistema](
	[IdMenuSistema] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [char](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [IdMenuSistemaPk] PRIMARY KEY CLUSTERED 
(
	[IdMenuSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPago]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPago](
	[IdPago] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdDetServicio] [int] NOT NULL,
	[FPago] [date] NOT NULL,
	[HPago] [time](7) NOT NULL,
 CONSTRAINT [IdPagoPk] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPeriodo]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPeriodo](
	[IdPeriodo] [int] IDENTITY(1,1) NOT NULL,
	[Semestre] [char](6) NOT NULL,
	[F_Inicio] [date] NOT NULL,
	[F_Fin] [date] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [IdPeriodoPk] PRIMARY KEY CLUSTERED 
(
	[IdPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPersona]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPersona](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [char](8) NOT NULL,
	[Apellidos] [varchar](40) NOT NULL,
	[Nombres] [varchar](40) NOT NULL,
	[Sexo] [bit] NOT NULL,
	[FechaNacimiento] [date] NULL,
	[Direccion] [varchar](100) NOT NULL,
	[EMail] [varchar](50) NULL,
	[Telefono] [char](8) NULL,
	[IdTipoPersona] [int] NOT NULL,
 CONSTRAINT [IdPersonaPk] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPlanEstudio]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPlanEstudio](
	[IdPlanEstudio] [int] IDENTITY(1,1) NOT NULL,
	[PlanEstudio] [varchar](50) NOT NULL,
	[FInicio] [date] NOT NULL,
	[FFin] [date] NULL,
	[IdEspecialidad] [int] NOT NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [IdPlanEstudioPk] PRIMARY KEY CLUSTERED 
(
	[IdPlanEstudio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblReservaMatricula]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblReservaMatricula](
	[IdReservaMatricula] [int] IDENTITY(1,1) NOT NULL,
	[IdMatricula] [int] NOT NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [IdReservaMatriculaPk] PRIMARY KEY CLUSTERED 
(
	[IdReservaMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRol]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdMenuSistema] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [IdRolPk] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblServicio]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblServicio](
	[IdServicio] [int] IDENTITY(1,1) NOT NULL,
	[Servicio] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [IdServicioPk] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTipoCurso]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTipoCurso](
	[IdTipoCurso] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTipoPersona]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTipoPersona](
	[IDTipoPersona] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [char](1) NULL,
	[Cargo] [varchar](100) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [IdTipoPersonaPk] PRIMARY KEY CLUSTERED 
(
	[IDTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTurno]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTurno](
	[IdTurno] [int] IDENTITY(1,1) NOT NULL,
	[Turno] [char](1) NULL,
	[HInicio] [time](7) NOT NULL,
	[HFin] [time](7) NOT NULL,
 CONSTRAINT [IdTurnoPk] PRIMARY KEY CLUSTERED 
(
	[IdTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUsuario]    Script Date: 25/11/2020 23:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUsuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[Usuario] [char](50) NOT NULL,
	[Clave] [char](10) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [IdUsuarioPk] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblTipoCurso] ON 
GO
INSERT [dbo].[TblTipoCurso] ([IdTipoCurso], [Tipo]) VALUES (1, N'Curso Transversal')
GO
INSERT [dbo].[TblTipoCurso] ([IdTipoCurso], [Tipo]) VALUES (2, N'Curso Regular')
GO
SET IDENTITY_INSERT [dbo].[TblTipoCurso] OFF
GO
ALTER TABLE [dbo].[TblCurso]  WITH CHECK ADD  CONSTRAINT [FK_TblCurso_TblTipoCurso] FOREIGN KEY([IdTipoCurso])
REFERENCES [dbo].[TblTipoCurso] ([IdTipoCurso])
GO
ALTER TABLE [dbo].[TblCurso] CHECK CONSTRAINT [FK_TblCurso_TblTipoCurso]
GO
ALTER TABLE [dbo].[TblCurso]  WITH CHECK ADD  CONSTRAINT [IdPlanEstudioFk] FOREIGN KEY([IdPlanEstudio])
REFERENCES [dbo].[TblPlanEstudio] ([IdPlanEstudio])
GO
ALTER TABLE [dbo].[TblCurso] CHECK CONSTRAINT [IdPlanEstudioFk]
GO
ALTER TABLE [dbo].[TblDetServicio]  WITH CHECK ADD  CONSTRAINT [IdPeriodoFk] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[TblPeriodo] ([IdPeriodo])
GO
ALTER TABLE [dbo].[TblDetServicio] CHECK CONSTRAINT [IdPeriodoFk]
GO
ALTER TABLE [dbo].[TblDetServicio]  WITH CHECK ADD  CONSTRAINT [IdServicioFk] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[TblServicio] ([IdServicio])
GO
ALTER TABLE [dbo].[TblDetServicio] CHECK CONSTRAINT [IdServicioFk]
GO
ALTER TABLE [dbo].[TblMatricula]  WITH CHECK ADD  CONSTRAINT [FkIdCiclo] FOREIGN KEY([IdCiclo])
REFERENCES [dbo].[TblCiclo] ([IdCiclo])
GO
ALTER TABLE [dbo].[TblMatricula] CHECK CONSTRAINT [FkIdCiclo]
GO
ALTER TABLE [dbo].[TblMatricula]  WITH CHECK ADD  CONSTRAINT [FkIdEspecialidad] FOREIGN KEY([IdEspecialidad])
REFERENCES [dbo].[TblEspecialidad] ([IdEspecialidad])
GO
ALTER TABLE [dbo].[TblMatricula] CHECK CONSTRAINT [FkIdEspecialidad]
GO
ALTER TABLE [dbo].[TblMatricula]  WITH CHECK ADD  CONSTRAINT [FkIdPago] FOREIGN KEY([IdPago])
REFERENCES [dbo].[TblPago] ([IdPago])
GO
ALTER TABLE [dbo].[TblMatricula] CHECK CONSTRAINT [FkIdPago]
GO
ALTER TABLE [dbo].[TblMatricula]  WITH CHECK ADD  CONSTRAINT [FkIdPeriodo] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[TblPeriodo] ([IdPeriodo])
GO
ALTER TABLE [dbo].[TblMatricula] CHECK CONSTRAINT [FkIdPeriodo]
GO
ALTER TABLE [dbo].[TblMatricula]  WITH CHECK ADD  CONSTRAINT [IdFkPersona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[TblPersona] ([IdPersona])
GO
ALTER TABLE [dbo].[TblMatricula] CHECK CONSTRAINT [IdFkPersona]
GO
ALTER TABLE [dbo].[TblMatricula]  WITH CHECK ADD  CONSTRAINT [IdTurnoFk] FOREIGN KEY([IdTurno])
REFERENCES [dbo].[TblTurno] ([IdTurno])
GO
ALTER TABLE [dbo].[TblMatricula] CHECK CONSTRAINT [IdTurnoFk]
GO
ALTER TABLE [dbo].[TblPago]  WITH CHECK ADD  CONSTRAINT [FkIdPersona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[TblPersona] ([IdPersona])
GO
ALTER TABLE [dbo].[TblPago] CHECK CONSTRAINT [FkIdPersona]
GO
ALTER TABLE [dbo].[TblPago]  WITH CHECK ADD  CONSTRAINT [IdDetServicioFk] FOREIGN KEY([IdDetServicio])
REFERENCES [dbo].[TblDetServicio] ([IdDetServicio])
GO
ALTER TABLE [dbo].[TblPago] CHECK CONSTRAINT [IdDetServicioFk]
GO
ALTER TABLE [dbo].[TblPersona]  WITH CHECK ADD  CONSTRAINT [IdTipoPersonaFk] FOREIGN KEY([IdTipoPersona])
REFERENCES [dbo].[TblTipoPersona] ([IDTipoPersona])
GO
ALTER TABLE [dbo].[TblPersona] CHECK CONSTRAINT [IdTipoPersonaFk]
GO
ALTER TABLE [dbo].[TblPlanEstudio]  WITH CHECK ADD  CONSTRAINT [IdEspecialidadFk] FOREIGN KEY([IdEspecialidad])
REFERENCES [dbo].[TblEspecialidad] ([IdEspecialidad])
GO
ALTER TABLE [dbo].[TblPlanEstudio] CHECK CONSTRAINT [IdEspecialidadFk]
GO
ALTER TABLE [dbo].[TblReservaMatricula]  WITH CHECK ADD  CONSTRAINT [IdMatriculaFk] FOREIGN KEY([IdMatricula])
REFERENCES [dbo].[TblMatricula] ([IdMatricula])
GO
ALTER TABLE [dbo].[TblReservaMatricula] CHECK CONSTRAINT [IdMatriculaFk]
GO
ALTER TABLE [dbo].[TblRol]  WITH CHECK ADD  CONSTRAINT [IdMenuSistemaFk] FOREIGN KEY([IdMenuSistema])
REFERENCES [dbo].[TblMenuSistema] ([IdMenuSistema])
GO
ALTER TABLE [dbo].[TblRol] CHECK CONSTRAINT [IdMenuSistemaFk]
GO
ALTER TABLE [dbo].[TblRol]  WITH CHECK ADD  CONSTRAINT [IdUsuarioFk] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[TblUsuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[TblRol] CHECK CONSTRAINT [IdUsuarioFk]
GO
ALTER TABLE [dbo].[TblUsuario]  WITH CHECK ADD  CONSTRAINT [IdPersonaFk] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[TblPersona] ([IdPersona])
GO
ALTER TABLE [dbo].[TblUsuario] CHECK CONSTRAINT [IdPersonaFk]
GO
USE [master]
GO
ALTER DATABASE [BDMatricula] SET  READ_WRITE 
GO
