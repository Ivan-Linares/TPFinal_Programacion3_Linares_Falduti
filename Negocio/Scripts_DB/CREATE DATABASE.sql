CREATE  DATABASE BIENES_RAICES
GO
USE BIENES_RAICES
GO
CREATE TABLE TIPO_PROPIEDADES(
IDTIPO INT NOT NULL  PRIMARY KEY IDENTITY(1,1) ,
DESCRIPCION_TIPO VARCHAR (50) NOT NULL
)
GO
CREATE TABLE PROPIEDADES(
 IDPROPIEDAD INT NOT NULL PRIMARY  KEY IDENTITY(1,1),
 TIPO_PROPIEDAD INT NOT NULL ,
 DESCRIPCION VARCHAR(100) NOT NULL,
 CANT_AMBIENTES INT ,
 MTS2 DECIMAL(5,2) NOT NULL CHECK (MTS2>0),
 COCHERA BIT NOT NULL,
 DIRECCION VARCHAR (100) NOT NULL,
 URL_IMAGEN  VARCHAR (300) NOT NULL,
 VENTA BIT NOT NULL,
 PRECIO MONEY NOT NULL CHECK (PRECIO>0),
 ESTADO BIT NOT NULL
)


GO
CREATE TABLE USUARIOS (
IDUSUARIO INT  NOT NULL PRIMARY  KEY IDENTITY(1,1),
NOMBRE VARCHAR(50) NOT NULL,
APELLIDO VARCHAR(50) NOT NULL,
EMAIL VARCHAR(50) NOT NULL UNIQUE,
FECHA_NACIMIENTO DATE NOT NULL,
NIVEL_ACCESO INT NOT NULL CHECK (NIVEL_ACCESO>=0),
CONTRESEŅA VARCHAR (20) NOT NULL,
ESTADO BIT NOT NULL
)
GO

CREATE TABLE TIPO_USUARIO(
TIPO INT NOT NULL PRIMARY KEY,
DESCRIPCION VARCHAR (50) NOT NULL
)
GO

CREATE TABLE VENDEDORES(
IDVENDEDOR INT NOT NULL PRIMARY  KEY IDENTITY(1,1),
NOMBRE VARCHAR(50) NOT NULL,
APELLIDO VARCHAR(50) NOT NULL,
SEXO CHAR NOT NULL,
LEGAJO VARCHAR (10) NOT NULL,
DNI  VARCHAR (10) NOT NULL,
DOMICILIO VARCHAR (50),
FECHA_INGRESO  DATE  NOT NULL,
ESTADO BIT NOT NULL
)


--INSERT TIPO DE PROPIEDADES---------------------
INSERT INTO TIPO_PROPIEDADES VALUES ('DEPARTAMENTO')
INSERT INTO TIPO_PROPIEDADES VALUES ('CASA')
INSERT INTO TIPO_PROPIEDADES VALUES ('LOTE')
INSERT INTO TIPO_PROPIEDADES VALUES ('DUPLEX')

-- INSERT PROPIEDADES -------------------
INSERT INTO PROPIEDADES VALUES (1,'EXCELENTE UBICACION',2,25,0,'PRESIDENTE PERON 2332','https://decofilia.com/wp-content/uploads/2017/01/mejores-apartamentos-pisos-lujo-mundo-78.jpg',1,95000,1)
INSERT INTO PROPIEDADES VALUES (2,'IDEAL FAMILIA TIPO',5,65.5,1,'PRINGLES 987','https://phantom-expansion.unidadeditorial.es/6e465f1d3047c29d8ae05b7e58ebc98a/crop/164x0/1024x573/f/jpg/assets/multimedia/imagenes/2021/10/14/16342349978769.jpg',1,120000,1)
INSERT INTO PROPIEDADES VALUES (3,'LOTE EN ZONA DE EXPANCION',5,75.2,0,'LOS AROLDOS 3321','https://www.semana.com/resizer/ktXumP3bvnZUKCPwU52GwWWBebo=/1280x720/smart/filters:format(jpg):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/semana/4KEOUCGM7FDRHGJVNJJWTAF464.jpeg',1,95000,1)

--INSERT USUARIOS---------------------------
INSERT INTO USUARIOS VALUES ('SANTIAGO','LINARES','SANTILINARES@GMAIL.COM','20001010',2,'123456',1)
INSERT INTO USUARIOS VALUES ('MATIAS','FALDUTI','MATIASF@YAHOO.COM','19900101',0,'123456',1)
INSERT INTO USUARIOS VALUES ('MAXIMILIANO','SAR FERNANDEZ','MAXI@UTN.COM.AR','19950101',1,'123456',1)

--INSERT TIPO USUARIO----------------------------------
INSERT INTO TIPO_USUARIO VALUES('0','ADMINISTRADOR')
INSERT INTO TIPO_USUARIO VALUES('1','VENDEDOR')
INSERT INTO TIPO_USUARIO VALUES('2','CLIENTE')

--INSERT  VENDEDEDORES--------------------------------
INSERT INTO VENDEDORES VALUES ('24495','25325172','MITRE 272','20200110',1)
INSERT INTO VENDEDORES VALUES ('13456','10175665','JUAN B JUSTO 6585','20051101',1)
INSERT INTO VENDEDORES VALUES ('24600','36111222','AV CHUBUT 1234','20220501',1)



