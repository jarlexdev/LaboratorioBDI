CREATE DATABASE Farmacia;

USE Farmacia;

-- TABLA DEPARTAMENTOS --
CREATE TABLE departamentos(
    idDepartamento CHAR(2) PRIMARY KEY,
    departamento VARCHAR(25) NOT NULL,
    pais VARCHAR(25) NOT NULL
);

-- TABLA MUNICIPIOS --
CREATE TABLE municipios(
    idMunicipio CHAR(3) PRIMARY KEY,
    municipio CHAR(50) NOT NULL,
    idDepartamento CHAR(2) NOT NULL
);

-- TABLA DISTIRTO --
CREATE TABLE distritos(
    idDistrito CHAR(5) PRIMARY KEY,
    distrito VARCHAR(50) NOT NULL, 
    idMunicipio CHAR(3) NOT NULL
);

-- TABLA DIRECCIONES --
CREATE TABLE direcciones(
    idDireccion INT  PRIMARY KEY AUTO_INCREMENT,
    linea1 VARCHAR(100) NOT NULL,
    linea2 VARCHAR(50),
    codigoPostal VARCHAR(7),
    idDistrito CHAR(5) NOT NULL
);

-- TABLA CATEGORIAS --
CREATE TABLE categorias( 
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nombreCategoria VARCHAR(45) NOT NULL,
    descripcionCategoria VARCHAR(100)
);

-- TABLA MARCAS --
CREATE TABLE marcas(
    idMarca INT PRIMARY KEY AUTO_INCREMENT,
    nombreMarca VARCHAR(50) NOT NULL,
    descripcionMarca VARCHAR(100)
);

-- TABLA PRESENTACION DE MEDICAMENTO --
CREATE TABLE presentacionMedicamento(    
    idPresentacionMedicamento INT PRIMARY KEY AUTO_INCREMENT,
    nombrePresentacion VARCHAR(45) NOT NULL,
    descipcion VARCHAR(100),
    idmedicamento INT NOT NULL
);

-- TABLA MEDICAMENTOS --
CREATE TABLE medicamentos(
    idMedicamento INT PRIMARY KEY AUTO_INCREMENT,
    nombreMedicamento VARCHAR(100) NOT NULL,
    descripcionMedicamento VARCHAR(100),
    dosisMedicamento VARCHAR(50) NOT NULL,
    fechaVencimiento DATE NOT NULL,
    precioCompra FLOAT NOT NULL,
    precioVenta FLOAT NOT NULL,
    idCategoria INT NOT NULL,
    idMarca INT NOT NULL
);

-- TABLA INVENTARIO --
CREATE TABLE inventario(
    idInventario INT PRIMARY KEY AUTO_INCREMENT,
    cantidadStock INT NOT NULL,
    noEstante INT NOT NULL,
    noPasillo INT NOT NULL,
    idmedicamento INT NOT NULL
);

-- TABLA COMPRAS --
CREATE TABLE compras(
    idCompra INT PRIMARY KEY AUTO_INCREMENT,
    fechaHoraCompra DATETIME NOT NULL,
    totalCompra FLOAT NOT NULL
);

-- TABLA DETALLE DE COMPRA --
CREATE TABLE detalleCompra(
    idDetalleCompra INT PRIMARY KEY AUTO_INCREMENT,
    cantidadComprada INT NOT NULL,
    precioUnitario FLOAT NOT NULL,
    subTotalCompra FLOAT NOT NULL,
    idCompra INT NOT NULL,
    idmedicamento INT NOT NULL
);

-- TABLA LABORATORIOS --
CREATE TABLE laboratorios(
    idLaboratorio INT PRIMARY KEY AUTO_INCREMENT,
    nombreLaboratorio VARCHAR(50) NOT NULL,
    numeroContacto CHAR(9) NOT NULL,
    correoElectronicoLaboratorio VARCHAR(100),
    idCompra INT NOT NULL,
    idDireccion INT NOT NULL
);

-- TABLA FACTURACION --
CREATE TABLE facturacion(
    idFacturacion INT PRIMARY KEY AUTO_INCREMENT,
    fechaHoraFacturacion DATETIME NOT NULL,
    idMetodoPago INT NOT NULL
);

-- TABLA METODOS DE PAGO -- 
CREATE TABLE metodoPagos(
    idMetodoPago INT PRIMARY KEY AUTO_INCREMENT,
    nombreMetodo VARCHAR(25) NOT NULL,
    descripcionMetodoPago VARCHAR(45) NOT NULL
);

-- TABLA VENTAS --
CREATE TABLE ventas(
    idVenta INT PRIMARY KEY AUTO_INCREMENT,
    fechaHoraVenta DATETIME NOT NULL,
    totalVenta FLOAT NOT NULL,
    idCliente INT NOT NULL 
);

-- TABLA DETALLE DE VENTA --
CREATE TABLE detalleVenta(
    idDetalleVenta INT PRIMARY KEY AUTO_INCREMENT,
    cantidadVendida INT NOT NULL,
    precioUnitario FLOAT NOT NULL,
    subTotalVenta FLOAT NOT NULL,
    idVenta INT NOT NULL,
    idmedicamento INT NOT NULL,
    idFacturacion INT NOT NULL
);

-- TABLA EMPLEADOS --
CREATE TABLE empleados(
    idEmpleado INT PRIMARY KEY AUTO_INCREMENT,
    nombresEmpleado VARCHAR(100) NOT NULL,
    apellidosEmpleado VARCHAR(100) NOT NULL,
    duiEmpleado CHAR(10) NOT NULL,
    isssEmpleado CHAR(9),
    fechaNacEmpleado DATE NOT NULL,
    telefonoEmpleado VARCHAR(15) NOT NULL,
    generoEmpleado CHAR(1) NOT NULL,
    correoEmpleado VARCHAR(100),
    idCargo INT NOT NULL,
    idDireccion INT NULL,
    idSucursal INT NOT NULL
);

-- TABLA CLIENTES --
CREATE TABLE clientes(
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombresCliente VARCHAR(100) NOT NULL,
    apellidosCliente VARCHAR(100) NOT NULL,
    telefonoCliente VARCHAR(15) NOT NULL,
    generoClientes VARCHAR(1) NOT NULL,
    duiCliente VARCHAR(10),
    fechaNacCliente DATE,
    correoCliente VARCHAR(100),
    idDireccion INT NOT NULL
);

-- TABLA SUCURSALES --
CREATE TABLE sucursales(
    idSucursal INT PRIMARY KEY AUTO_INCREMENT,
    nombreSucursal VARCHAR(45) NOT NULL,
    telefonoSucursal VARCHAR(15) NOT NULL,
    correoSucursal VARCHAR(100) NOT NULL,
    horatioApertura TIME NOT NULL,
    horarioCierre TIME NOT NULL,
    idDireccion INT NOT NULL
);

-- TABLA CARGOS --
CREATE TABLE cargos(
    idCargo INT PRIMARY KEY  AUTO_INCREMENT,
    cargo VARCHAR(25) NOT NULL
);

-- LLAVES FORANEAS DE DIRECCIONES --
ALTER TABLE municipios ADD FOREIGN KEY (idDepartamento) REFERENCES departamentos(idDepartamento);
ALTER TABLE distritos ADD FOREIGN KEY (idMunicipio) REFERENCES municipios(idMunicipio);
ALTER TABLE direcciones ADD FOREIGN KEY (idDistrito) REFERENCES distritos(idDistrito);
-- LLAVES FORANEAS DE EMPLEADOS --
ALTER TABLE empleados ADD FOREIGN KEY (idCargo) REFERENCES cargos(idCargo);
ALTER TABLE empleados ADD FOREIGN KEY (idDireccion) REFERENCES direcciones(idDireccion);
ALTER TABLE empleados ADD FOREIGN KEY (idSucursal) REFERENCES sucursales(idSucursal);
-- LLAVES FORANEAS DE CLIENTES --
ALTER TABLE clientes ADD FOREIGN KEY (idDireccion) REFERENCES direcciones(idDireccion);
-- LLAVES FORANEAS DE SUCURSALES --
ALTER TABLE sucursales ADD FOREIGN KEY (idDireccion) REFERENCES direcciones(idDireccion);
-- LLAVES FORANEAS DE VENTAS --
ALTER TABLE ventas ADD FOREIGN KEY (idCliente) REFERENCES clientes(idCliente);
-- LLAVES FORANEAS DE DETALLE DE VENTA --
ALTER TABLE detalleVenta ADD FOREIGN KEY (idVenta) REFERENCES ventas(idVenta);
ALTER TABLE detalleVenta ADD FOREIGN KEY (idMedicamento) REFERENCES medicamentos(idMedicamento);
ALTER TABLE detalleVenta ADD FOREIGN KEY (idFacturacion) REFERENCES facturacion(idFacturacion);
-- LLAVES FORANEAS DE FACTURACION --
ALTER TABLE facturacion ADD FOREIGN KEY (idMetodoPago) REFERENCES metodoPagos(idMetodoPago);
-- LLAVES FORANEAS DE LABORATORIOS --
ALTER TABLE laboratorios ADD FOREIGN KEY (idCompra) REFERENCES compras(idCompra);
ALTER TABLE laboratorios ADD FOREIGN KEY (idDireccion) REFERENCES direcciones(idDireccion);
-- LLAVES FORANEAS DE DETALLES DE COMPRA --
ALTER TABLE detalleCompra ADD FOREIGN KEY (idCompra) REFERENCES compras(idCompra);
ALTER TABLE detalleCompra ADD FOREIGN KEY (idMedicamento) REFERENCES medicamentos(idMedicamento);
-- LLAVES FORANEAS DE MEDICAMENTOS --
ALTER TABLE medicamentos ADD FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria);
ALTER TABLE medicamentos ADD FOREIGN KEY (idMarca) REFERENCES marcas(idMarca);
-- LLAVES FORANEAS DE INVENTARIO --
ALTER TABLE inventario ADD FOREIGN KEY (idMedicamento) REFERENCES medicamentos(idMedicamento);
-- LLAVES FORANEAS DE PRESENTACION DE MEDICAMENTO --
ALTER TABLE presentacionMedicamento ADD FOREIGN KEY (idMedicamento) REFERENCES medicamentos(idMedicamento);
