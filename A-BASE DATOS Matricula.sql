Create Database BDMatricula

Use BDMatricula;
go
/*Tablas*/
CREATE TABLE TblTipoPersona
(
IDTipoPersona int identity(1,1) NOT NULL,
Tipo char(1) NULL,
Cargo varchar (100) NULL,
Estado bit NULL
)

/*Clave principal*/
Alter Table TblTipoPersona
ADD Constraint IdTipoPersonaPk 
Primary Key (IdTipoPersona);


Create Table TblPersona
(
IdPersona int identity(1,1) not Null,
DNI Char (8) not Null,
Apellidos Varchar (40) Not Null,
Nombres Varchar(40) Not Null,
Sexo bit Not null,
FechaNacimiento Date,
Direccion Varchar (100) Not null,
EMail varchar(50),
Telefono char(8),
IdTipoPersona int Not Null
)

/*Clave principal*/
Alter Table TblPersona
ADD Constraint IdPersonaPk 
Primary Key (IdPersona);

/*Relación de tablas TblPersona con TblTipoPersona*/
Alter Table TblPersona ADD Constraint IdTipoPersonaFk Foreign Key (IdTipoPersona) References TblTipoPersona(IdTipoPersona)

Create Table TblUsuario
(
IdUsuario int identity(1,1) Not Null,
IdPersona int Not Null,
Usuario Char (50) Not Null,
Clave char(10) Not Null,
Estado bit Not Null
)

/*Clave principal*/
Alter Table TblUsuario
ADD Constraint IdUsuarioPk 
Primary Key (IdUsuario)

/*Relación de tablas TblUsuario con TblPersona*/
Alter Table TblUsuario ADD Constraint IdPersonaFk Foreign Key (IdPersona) References TblPersona(IdPersona)

Create Table TblMenuSistema
(
IdMenuSistema int identity(1,1) Not Null,
Descripcion Char (50) Not Null,
Estado bit Not Null
)

/*Clave principal*/
Alter Table TblMenuSistema
ADD Constraint IdMenuSistemaPk 
Primary Key (IdMenuSistema)


Create Table TblRol
(
IdRol int identity(1,1) Not Null,
IdUsuario int Not Null,
IdMenuSistema int Not Null,
Estado bit Not Null
)

/*Clave principal*/
Alter Table TblRol
ADD Constraint IdRolPk 
Primary Key (IdRol)

/*Relación de tablas TblRol con TblUsuario*/
Alter Table TblRol ADD Constraint IdUsuarioFk Foreign Key (IdUsuario) References TblUsuario(IdUsuario)

/*Relación de tablas TblRol con TblMenuSistema*/
Alter Table TblRol ADD Constraint IdMenuSistemaFk Foreign Key (IdMenuSistema) References TblMenuSistema(IdMenuSistema)



Create Table TblPeriodo
(
IdPeriodo int identity(1,1) Not Null,
Semestre Char (6) Not Null,
F_Inicio Date Not Null,
F_Fin Date Not Null,
Estado bit Not Null
)

/*Clave principal*/
Alter Table TblPeriodo
ADD Constraint IdPeriodoPk 
Primary Key (IdPeriodo);

Create Table TblServicio
(
IdServicio int identity(1,1) Not Null,
Servicio Varchar (50) Not Null,
Estado bit Not Null
)

/*Clave principal*/
Alter Table TblServicio
ADD Constraint IdServicioPk 
Primary Key (IdServicio);

Create Table TblDetServicio
(
IdDetServicio int identity(1,1) Not Null,
IdServicio int Not Null,
IdPeriodo int Not Null,
FEmision Date Not Null,
HVencimiento Time Not Null,
Estado bit Not Null
)

/*Clave principal*/
Alter Table TblDetServicio
ADD Constraint IdDetServicioPk 
Primary Key (IdDetServicio);

/*Relación de tablas TblDetServicio con TblServicio*/
Alter Table TblDetServicio ADD Constraint IdServicioFk Foreign Key (IdServicio) References TblServicio(IdServicio)

/*Relación de tablas TblDetServicio con TblPeriodo*/
Alter Table TblDetServicio ADD Constraint IdPeriodoFk Foreign Key (IdPeriodo) References TblPeriodo(IdPeriodo)

Create Table TblPago
(
IdPago int identity(1,1) Not Null,
IdPersona int Not Null,
IdDetServicio int Not Null,
FPago Date Not Null,
HPago Time Not Null
)

/*Clave principal*/
Alter Table TblPago
ADD Constraint IdPagoPk 
Primary Key (IdPago);

/*Relación de tablas TblPago con TblPersona*/
Alter Table TblPago ADD Constraint FkIdPersona Foreign Key (IdPersona) References TblPersona(IdPersona)

/*Relación de tablas TblPago con TblDetServicio*/
Alter Table TblPago ADD Constraint IdDetServicioFk Foreign Key (IdDetServicio) References TblDetServicio(IdDetServicio)

Create Table TblEspecialidad
(
IdEspecialidad int identity(1,1) Not Null,
Especialidad varchar(30) Not Null,
Estado bit
)

/*Clave principal*/
Alter Table TblEspecialidad
ADD Constraint IdEspecialidadPk 
Primary Key (IdEspecialidad);

Create Table TblPlanEstudio
(
IdPlanEstudio int identity(1,1) not Null,
PlanEstudio Varchar(50) Not Null,
FInicio Date Not Null,
FFin Date,
IdEspecialidad int Not Null,
Estado bit
)

/*Clave principal*/
Alter Table TblPlanEstudio
ADD Constraint IdPlanEstudioPk 
Primary Key (IdPlanEstudio);

/*Relación de tablas TblPlanEstudio con TblEspecialidad*/
Alter Table TblPlanEstudio ADD Constraint IdEspecialidadFk Foreign Key (IdEspecialidad) References TblEspecialidad(IdEspecialidad)

Create Table TblTipoCurso
(
IdTipoCurso int identity(1,1) not Null,
TipoCurso Varchar (50) Not Null
)

/*Clave principal*/
Alter Table TblTipoCurso
ADD Constraint IdTipoCursoPk
Primary Key (IdTipoCurso);

Create Table TblCurso
(
IdCurso int identity(1,1) not Null,
NombreCurso Varchar (50) Not Null,
Creditos int Not Null,
IdTipoCurso Int Not Null,
IdPlanEstudio int Not Null,
)

/*Clave principal*/
Alter Table TblCurso
ADD Constraint IdCursoPk
Primary Key (IdCurso);


/*Relación de tablas TblCurso con TblPlanEstudios*/
Alter Table TblCurso ADD Constraint IdPlanEstudioFk Foreign Key (IdPlanEstudio) References TblPlanEstudio(IdPlanEstudio)

/*Relación de tablas TblCurso con TblTipoCurso*/
Alter Table TblCurso ADD Constraint IdTipoCursoFk Foreign Key (IdTipoCurso) References TblTipoCurso(IdTipoCurso)

Create Table TblTurno
(
IdTurno int identity(1,1) not Null,
Turno char(1),
HInicio Time Not Null,
HFin Time Not Null
)

/*Clave principal*/
Alter Table TblTurno
ADD Constraint IdTurnoPk 
Primary Key (IdTurno);

Create Table TblCiclo
(
IdCiclo int identity(1,1) not Null,
Ciclo Char(3) not Null
)

/*Clave principal*/
Alter Table TblCiclo
ADD Constraint IdCicloPk 
Primary Key (IdCiclo);

Create Table TblMatricula
(
IdMatricula int identity(1,1) not Null,
IdPersona int Not Null,
IdCiclo int Not Null,
IdTurno int Not Null,
IdPeriodo int Not Null,
IdEspecialidad int Not Null,
FechaMatricula date Not Null,
HoraMatricula Time Not Null,
IdPago int Not Null
)

/*Clave principal*/
Alter Table TblMatricula
ADD Constraint IdMatriculaPk 
Primary Key (IdMatricula);

/*Relación de tablas TblMatricula con TblPersona*/
Alter Table TblMatricula ADD Constraint IdFkPersona Foreign Key (IdPersona) References TblPersona(IdPersona)

/*Relación de tablas TblMatricula con TblCiclo*/
Alter Table TblMatricula ADD Constraint FkIdCiclo Foreign Key (IdCiclo) References TblCiclo(IdCiclo)

/*Relación de tablas TblMatricula con TblTurno*/
Alter Table TblMatricula ADD Constraint IdTurnoFk Foreign Key (IdTurno) References TblTurno(IdTurno)

/*Relación de tablas TblMatricula con TblPeriodo*/
Alter Table TblMatricula ADD Constraint FkIdPeriodo Foreign Key (IdPeriodo) References TblPeriodo(IdPeriodo)

/*Relación de tablas TblMatricula con TblEspecialidad*/
Alter Table TblMatricula ADD Constraint FkIdEspecialidad Foreign Key (IdEspecialidad) References TblEspecialidad(IdEspecialidad)

/*Relación de tablas TblMatricula con TblPago*/
Alter Table TblMatricula ADD Constraint FkIdPago Foreign Key (IdPago) References TblPago(IdPago)

Create Table TblReservaMatricula
(
IdReservaMatricula int identity(1,1) not Null,
IdMatricula int Not Null,
Estado bit
)

/*Clave principal*/
Alter Table TblReservaMatricula
ADD Constraint IdReservaMatriculaPk 
Primary Key (IdReservaMatricula);

/*Relación de tablas TblReservaMatricula con TblMatricula*/
Alter Table TblReservaMatricula ADD Constraint IdMatriculaFk Foreign Key (IdMatricula) References TblMatricula(IdMatricula)