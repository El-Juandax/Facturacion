create database Facturacion

USE Facturacion

CREATE TABLE Servicios(
	Id_Registro varchar(50) NOT NULL,
	Cuenta varchar(20) NOT NULL,
	Id_Servicio int NOT NULL,
	Servicio varchar(15) NOT NULL,
	Nombre_Empresa varchar(50) NOT NULL,
	Ubicacion varchar(20) NOT NULL,
	Observacion varchar(30) NOT NULL,
	Fecha_Pago date NOT NULL,
	Direccion varchar(50) NOT NULL,
	Estado varchar(10) NOT NULL,
	UM varchar(5) NOT NULL,
	Periocidad int NOT NULL,
 CONSTRAINT PK_Servicios PRIMARY KEY CLUSTERED 
(
	Id_Registro ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE Pagos(
	Id_Registro varchar(50) NOT NULL,
	Cuenta varchar(20) NOT NULL,
	Referencia varchar(20) NOT NULL,
	Fecha_Pago date NOT NULL,
	Fecha_Pagado date NULL,
	Servicio varchar(15) NOT NULL,
	Empresa varchar(50) NOT NULL,
	Ubicacion varchar(20) NOT NULL,
	Consumo float NOT NULL,
	UM varchar(5) NOT NULL,
	Valor money NOT NULL,
	Estado varchar(10) NOT NULL,
 CONSTRAINT PK_Pagos PRIMARY KEY CLUSTERED 
(
	Id_Registro ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE Facturas(
	Id_Registro varchar(50) NOT NULL,
	Cuenta varchar(20) NOT NULL,
	Referencia varchar(20) NOT NULL,
	Fecha_Recibido date NOT NULL,
	Fecha_Pago date NOT NULL,
	Proxima_Factura date NOT NULL,
	Empresa varchar(50) NOT NULL,
	Servicio varchar(15) NOT NULL,
	Ubicacion varchar(20) NOT NULL,
	Direccion varchar(30) NOT NULL,
	Consumo float NOT NULL,
	UM varchar(5) NOT NULL,
	Valor money NOT NULL,
	Estado varchar(10) NOT NULL,
 CONSTRAINT PK_Facturas PRIMARY KEY CLUSTERED 
(
	Id_Registro ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
