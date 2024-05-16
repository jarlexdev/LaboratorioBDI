-- DCL BASE DE DATOS DE FARMACIA --

USE farmacia;

-- CREACION DE ROLES --
   CREATE ROLE IF NOT EXISTS 'SysAdmin';
   CREATE ROLE IF NOT EXISTS 'Regente';
   CREATE ROLE IF NOT EXISTS 'Gerente';
   CREATE ROLE IF NOT EXISTS 'Cajero';
   CREATE ROLE IF NOT EXISTS 'Vendedor';
   CREATE ROLE IF NOT EXISTS 'Bodeguero';
   CREATE ROLE IF NOT EXISTS 'RRHH';
   CREATE ROLE IF NOT EXISTS 'Contador';
    
-- ASIGNACION DE PRIVELEGIOS A ROLES --
-- ADMINISTRADOR -- 1
GRANT ALL ON farmacia.* TO 'SysAdmin';

-- REGENTE -- 2
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.sucursales TO Regente;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.medicamentos TO Regente;

-- GERENTE -- 3
GRANT ALL ON farmacia.* TO 'Gerente';

-- CAJERO -- 4
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.direcciones TO Cajero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.metodosPago TO Cajero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.facturaVenta TO Cajero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.detalleVenta TO Cajero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.ventas TO Cajero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.clientes TO Cajero;
-- SOLO LECTURA --
GRANT SELECT ON farmacia.departamentos TO Cajero;
GRANT SELECT ON farmacia.municipios TO Cajero;
GRANT SELECT ON farmacia.distritos TO Cajero;

-- VENDEDOR -- 5
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.clientes TO Vendedor;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.medicamentos TO Vendedor;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.direcciones TO Vendedor;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.ventas TO Vendedor;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.detalleVenta TO Vendedor;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.facturaVenta TO Vendedor;
-- SOLO LECTURA --
GRANT SELECT ON farmacia.departamentos TO Vendedor;
GRANT SELECT ON farmacia.municipios TO Vendedor;
GRANT SELECT ON farmacia.distritos TO Vendedor;

-- BODEGERO -- 6
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.inventario TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.medicamentos TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.categorias TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.presentacionMedicamento TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.marcas TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.compras TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.detalleCompra TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.facturaCompra TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.laboratorios TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.direcciones TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.sucursales TO Bodeguero;
-- SOLO LECTURA --
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.departamentos TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.municipios TO Bodeguero;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.distritos TO Bodeguero;

-- RRHH -- 7
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.empleados TO RRHH;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.cargos TO RRHH;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.direcciones TO RRHH;
-- SOLO LECTURA --
GRANT SELECT ON farmacia.departamentos TO RRHH;
GRANT SELECT ON farmacia.municipios TO RRHH;
GRANT SELECT ON farmacia.distritos TO RRHH;

-- CONTADOR -- 8
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.ventas TO Contador;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.detalleVenta TO Contador;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.facturaVenta TO Contador;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.compras TO Contador;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.detalleCompra TO Contador;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.facturaCompra TO Contador;
GRANT SELECT, INSERT, UPDATE, DELETE ON farmacia.metodosPago TO Contador;

-- CREACION DE USUARIOS --
CREATE USER IF NOT EXISTS 'admin_lauragarcia'@'localhost'
IDENTIFIED WITH SHA256_PASSWORD BY 'root'
PASSWORD EXPIRE INTERVAL 180 DAY;

CREATE USER IF NOT EXISTS 'regen_robertohernandez'@'localhost'
IDENTIFIED WITH SHA256_PASSWORD BY 'Hernandez123'
PASSWORD EXPIRE INTERVAL 180 DAY;

CREATE USER IF NOT EXISTS 'geren_elenasanchez'@'localhost'
IDENTIFIED WITH SHA256_PASSWORD BY 'Elena234'
PASSWORD EXPIRE INTERVAL 180 DAY;

CREATE USER IF NOT EXISTS 'caje_diegomartinez'@'localhost'
IDENTIFIED WITH SHA256_PASSWORD BY 'Martinez345'
PASSWORD EXPIRE INTERVAL 180 DAY;

CREATE USER IF NOT EXISTS 'vende_sofialopez'@'localhost'
IDENTIFIED WITH SHA256_PASSWORD BY 'Lopez456'
PASSWORD EXPIRE INTERVAL 180 DAY;

CREATE USER IF NOT EXISTS 'bodeg_marvinreyes'@'localhost'
IDENTIFIED WITH SHA256_PASSWORD BY 'Reyes567'
PASSWORD EXPIRE INTERVAL 180 DAY;

CREATE USER IF NOT EXISTS 'rrhh_juliorivera'@'localhost'
IDENTIFIED WITH SHA256_PASSWORD BY 'Rivera678'
PASSWORD EXPIRE INTERVAL 180 DAY;

CREATE USER IF NOT EXISTS 'conta_rodrigozabala'@'localhost'
IDENTIFIED WITH SHA256_PASSWORD BY 'Zabala789'
PASSWORD EXPIRE INTERVAL 180 DAY;

-- CONSULTAR ROLES Y USUARIOS --
SELECT * FROM mysql.user;

-- VINCULAR USUARIOS A ROLES --
GRANT SysAdmin TO 'admin_lauragarcia'@'localhost';
GRANT Regente TO 'regen_robertohernandez'@'localhost';
GRANT Gerente TO 'geren_elenasanchez'@'localhost';
GRANT Cajero TO 'caje_diegomartinez'@'localhost';
GRANT Vendedor TO 'vende_sofialopez'@'localhost';
GRANT Bodeguero TO 'bodeg_marvinreyes'@'localhost';
GRANT RRHH TO 'rrhh_juliorivera'@'localhost';
GRANT Contador TO 'conta_rodrigozabala'@'localhost';

-- CONSULTAR PERMISOS POR ROL Y USUARIOS --
-- ROLES --
SHOW GRANTS FOR 'SysAdmin';
SHOW GRANTS FOR 'Regente';
SHOW GRANTS FOR 'Gerente';
SHOW GRANTS FOR 'Cajero';
SHOW GRANTS FOR 'Vendedor';
SHOW GRANTS FOR 'Bodeguero';
SHOW GRANTS FOR 'RRHH';
SHOW GRANTS FOR 'Contador';

-- USUARIOS --
SHOW GRANTS FOR 'admin_lauragarcia'@'localhost';
SHOW GRANTS FOR 'regen_robertohernandez'@'localhost';
SHOW GRANTS FOR 'geren_elenasanchez'@'localhost';
SHOW GRANTS FOR 'caje_diegomartinez'@'localhost';
SHOW GRANTS FOR 'vende_sofialopez'@'localhost';
SHOW GRANTS FOR 'bodeg_marvinreyes'@'localhost';
SHOW GRANTS FOR 'rrhh_juliorivera'@'localhost';
SHOW GRANTS FOR 'conta_rodrigozabala'@'localhost';