CREATE DATABASE Farmacia;

USE Farmacia;

-- TABLAS DE DIRECCIONES --
CREATE TABLE departamentos(
    idDepartamento CHAR(2) PRIMARY KEY,
    departamento VARCHAR(25) NOT NULL,
    pais VARCHAR(25) NOT NULL
);

CREATE TABLE municipios(
    idMunicipio CHAR(3) PRIMARY KEY,
    municipio CHAR(50) NOT NULL,
    idDepartamento CHAR(2) NOT NULL
);

CREATE TABLE distritos(
    idDistrito CHAR(5) PRIMARY KEY,
    distrito VARCHAR(50) NOT NULL, 
    idMunicipio CHAR(3) NOT NULL
);

CREATE TABLE direcciones(
    idDireccion INT PRIMARY KEY AUTO_INCREMENT,
    linea1 VARCHAR(100) NOT NULL,
    linea2 VARCHAR(50),
    codigoPostal VARCHAR(7),
    idDistrito CHAR(5) NOT NULL
);

-- TABLAS DE COMPRAS --
CREATE TABLE categorias( 
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nombreCategoria VARCHAR(45) NOT NULL,
    descripcionCategoria VARCHAR(100)
);

CREATE TABLE marcas(
    idMarca INT PRIMARY KEY AUTO_INCREMENT,
    nombreMarca VARCHAR(50) NOT NULL,
    descripcionMarca VARCHAR(100)
);

CREATE TABLE presentacionMedicamento(    
    idPresentacionMedicamento INT PRIMARY KEY AUTO_INCREMENT,
    nombrePresentacion VARCHAR(45) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE inventario(
    idInventario INT PRIMARY KEY AUTO_INCREMENT,
    cantidadStock INT NOT NULL,
    noEstanteria INT NOT NULL,
    noPasillo INT NOT NULL
);

CREATE TABLE medicamentos(
    idMedicamento INT PRIMARY KEY AUTO_INCREMENT,
    nombreMedicamento VARCHAR(100) NOT NULL,
    formulaMedicamento VARCHAR(45) NOT NULL,
    descripcionMedicamento VARCHAR(100),
    dosisMedicamento VARCHAR(50) NOT NULL,
    fechaVencimiento DATE NOT NULL,
    precioCompra DECIMAL(5,2) NOT NULL,
    precioVenta DECIMAL(5,2) NOT NULL,
    idCategoria INT NOT NULL,
    idMarca INT NOT NULL,
    idPresentacionMedicamento INT NOT NULL,
    idInventario INT NOT NULL
);

CREATE TABLE facturaCompra(
    idFacturaCompra INT PRIMARY KEY AUTO_INCREMENT,
    fechaHoraFacturacion DATETIME NOT NULL,
    ivaFacturaCompra DECIMAL(5,2),
    creditoFiscalCompra DECIMAL(5,2)
);

CREATE TABLE detalleCompra(
    idDetalleCompra INT PRIMARY KEY AUTO_INCREMENT,
    cantidadComprada INT NOT NULL,
    precioUnitario DECIMAL(5,2) NOT NULL,
    subTotalCompra DECIMAL(5,2) NOT NULL,
    idCompra INT NOT NULL,
    idMedicamento INT NOT NULL,
    idFacturaCompra INT NOT NULL
);

CREATE TABLE compras(
    idCompra INT PRIMARY KEY AUTO_INCREMENT,
    fechaHoraCompra DATETIME NOT NULL,
    totalCompra DECIMAL(5,2) NOT NULL,
    idLaboratorio INT NOT NULL
);

CREATE TABLE laboratorios(
    idLaboratorio INT PRIMARY KEY AUTO_INCREMENT,
    nombreLaboratorio VARCHAR(50) NOT NULL,
    numeroContacto CHAR(9) NOT NULL,
    correoElectronicoLaboratorio VARCHAR(100),
    idDireccion INT NOT NULL
);

-- TABLAS DE VENTAS -- 
CREATE TABLE metodoPagos(
    idMetodoPago INT PRIMARY KEY AUTO_INCREMENT,
    nombreMetodo VARCHAR(25) NOT NULL,
    descripcionMetodoPago VARCHAR(45)
);

CREATE TABLE facturaVenta(
    idFacturaVenta INT PRIMARY KEY AUTO_INCREMENT,
    fechaHoraFacturacion DATETIME NOT NULL,
    ivaFacturaVenta DECIMAL(5,2),
    creditoFiscalVenta DECIMAL(5,2),
    idMetodoPago INT NOT NULL
);

CREATE TABLE detalleVenta(
    idDetalleVenta INT PRIMARY KEY AUTO_INCREMENT,
    cantidadVendida INT NOT NULL,
    precioUnitario DECIMAL(5,2) NOT NULL,
    subTotalVenta DECIMAL(5,2) NOT NULL,
    idVenta INT NOT NULL,
    idMedicamento INT NOT NULL,
    idFacturaVenta INT NOT NULL
);

CREATE TABLE ventas(
    idVenta INT PRIMARY KEY AUTO_INCREMENT,
    fechaHoraVenta DATETIME NOT NULL,
    totalVenta DECIMAL(5,2) NOT NULL,
    idCliente INT NOT NULL ,
    idEmpleado INT NOT NULL
);

CREATE TABLE clientes(
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombresCliente VARCHAR(100) NOT NULL,
    apellidosCliente VARCHAR(100) NOT NULL,
    telefonoCliente VARCHAR(15) NOT NULL,
    generoCliente VARCHAR(1) NOT NULL,
    duiCliente VARCHAR(10),
    fechaNacCliente DATE,
    correoCliente VARCHAR(100),
    idDireccion INT NOT NULL
);

CREATE TABLE sucursales(
    idSucursal INT PRIMARY KEY AUTO_INCREMENT,
    nombreSucursal VARCHAR(45) NOT NULL,
    telefonoSucursal VARCHAR(15) NOT NULL,
    correoSucursal VARCHAR(100) NOT NULL,
    horarioApertura TIME NOT NULL,
    horarioCierre TIME NOT NULL,
    idDireccion INT NOT NULL
);

CREATE TABLE cargos(
    idCargo INT PRIMARY KEY  AUTO_INCREMENT,
    cargo VARCHAR(25) NOT NULL,
    descripcionCargo VARCHAR(45)
);

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
    idDireccion INT NOT NULL,
    idSucursal INT NOT NULL
);

-- LLAVES FORANEAS DE DIRECCIONES --
ALTER TABLE municipios ADD FOREIGN KEY (idDepartamento) REFERENCES departamentos(idDepartamento);
ALTER TABLE distritos ADD FOREIGN KEY (idMunicipio) REFERENCES municipios(idMunicipio);
ALTER TABLE direcciones ADD FOREIGN KEY (idDistrito) REFERENCES distritos(idDistrito);
-- LLAVES FORANEAS DE COMPRAS --
ALTER TABLE medicamentos ADD FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria);
ALTER TABLE medicamentos ADD FOREIGN KEY (idMarca) REFERENCES marcas(idMarca);
ALTER TABLE medicamentos ADD FOREIGN KEY (idPresentacionMedicamento) REFERENCES presentacionMedicamento(idPresentacionMedicamento);
ALTER TABLE medicamentos ADD FOREIGN KEY (idInventario) REFERENCES inventario(idInventario);
ALTER TABLE detalleCompra ADD FOREIGN KEY (idCompra) REFERENCES compras(idCompra);
ALTER TABLE detalleCompra ADD FOREIGN KEY (idMedicamento) REFERENCES medicamentos(idMedicamento);
ALTER TABLE detalleCompra ADD FOREIGN KEY (idFacturaCompra) REFERENCES facturaCompra(idFacturaCompra);
ALTER TABLE compras ADD FOREIGN KEY (idLaboratorio) REFERENCES laboratorios(idLaboratorio);
ALTER TABLE laboratorios ADD FOREIGN KEY (idDireccion) REFERENCES direcciones(idDireccion);
-- LLAVES FORANEAS DE VENTAS --
ALTER TABLE facturaVenta ADD FOREIGN KEY (idMetodoPago) REFERENCES metodoPagos(idMetodoPago);
ALTER TABLE detalleVenta ADD FOREIGN KEY (idVenta) REFERENCES ventas(idVenta);
ALTER TABLE detalleVenta ADD FOREIGN KEY (idMedicamento) REFERENCES medicamentos(idMedicamento);
ALTER TABLE detalleVenta ADD FOREIGN KEY (idFacturaVenta) REFERENCES facturaVenta(idFacturaVenta);
ALTER TABLE ventas ADD FOREIGN KEY (idCliente) REFERENCES clientes(idCliente);
ALTER TABLE ventas ADD FOREIGN KEY (idEmpleado) REFERENCES empleados(idEmpleado);
ALTER TABLE clientes ADD FOREIGN KEY (idDireccion) REFERENCES direcciones(idDireccion);
ALTER TABLE empleados ADD FOREIGN KEY (idCargo) REFERENCES cargos(idCargo);
ALTER TABLE empleados ADD FOREIGN KEY (idDireccion) REFERENCES direcciones(idDireccion);
ALTER TABLE empleados ADD FOREIGN KEY (idSucursal) REFERENCES sucursales(idSucursal);
ALTER TABLE sucursales ADD FOREIGN KEY (idDireccion) REFERENCES direcciones(idDireccion);