-- INSERCIONES

-- Tablas de direccion
INSERT INTO departamentos VALUES
-- idDepartamento, departamento, pais 
	('AH', 'Ahuachapán', 'El Salvador'),
	('CA', 'Cabañas', 'El Salvador'),
	('CH', 'Chalatenango', 'El Salvador'),
	('CU', 'Cuscatlán', 'El Salvador'),
	('LL', 'La Libertad', 'El Salvador'),
	('LP', 'La Paz', 'El Salvador'),
	('LU', 'La Unión', 'El Salvador'),
	('MO', 'Morazán', 'El Salvador'),
	('SA', 'Santa Ana', 'El Salvador'),
	('SM', 'San Miguel', 'El Salvador'),
	('SS', 'San Salvador', 'El Salvador'),
	('SV', 'San Vicente', 'El Salvador'),
	('SO', 'Sonsonate', 'El Salvador'),
	('US', 'Usulután', 'El Salvador');

INSERT INTO municipios VALUES
-- idMunicipio, municipio, idDepartamento
	('AHN', 'Ahuachapán Norte', 'AH'),
	('AHC', 'Ahuachapán Centro', 'AH'),
	('AHS', 'Ahuachapán Sur', 'AH'),
	('CAE', 'Cabañas Este', 'CA'),
	('CAO', 'Cabañas Oeste', 'CA'),
	('CHN', 'Chalatenango Norte', 'CH'),
	('CHC', 'Chalatenango Centro', 'CH'),
	('CHS', 'Chalatenango Sur', 'CH'),
	('CUN', 'Cuscatlán Norte', 'CU'),
	('CUS', 'Cuscatlán Sur', 'CU'),
	('LLN', 'La Libertad Norte', 'LL'),
	('LLC', 'La Libertad Centro', 'LL'),
	('LLO', 'La Libertad Oeste', 'LL'),
	('LLE', 'La Libertad Este', 'LL'),
	('LLS', 'La Libertad Sur', 'LL'),
	('LLT', 'La Libertad Costa', 'LL'),
	('LPO', 'La Paz Oeste', 'LP'),
	('LPC', 'La Paz Centro', 'LP'),
	('LPE', 'La Paz Este', 'LP'),
	('LUN', 'La Unión Norte', 'LU'),
	('LUS', 'La Unión Sur', 'LU'),
	('MON', 'Morazán Norte', 'MO'),
	('MOS', 'Morazán Sur', 'MO'),
	('SAN', 'Santa Ana Norte', 'SA'),
	('SAC', 'Santa Ana Centro', 'SA'),
	('SAE', 'Santa Ana Este', 'SA'),
	('SAO', 'Santa Ana Oeste', 'SA'),
	('SMN', 'San Miguel Norte', 'SM'),
	('SMC', 'San Miguel Centro', 'SM'),
	('SMO', 'San Miguel Oeste', 'SM'),
	('SSN', 'San Salvador Norte', 'SS'),
	('SSO', 'San Salvador Oeste', 'SS'),
	('SSE', 'San Salvador Este', 'SS'),
	('SSC', 'San Salvador Centro', 'SS'),
	('SSS', 'San Salvador Sur', 'SS'),
	('SVN', 'San Vicente Norte', 'SV'),
	('SVS', 'San Vicente Sur', 'SV'),
	('SON', 'Sonsonate Norte', 'SO'),
	('SOC', 'Sonsonate Centro', 'SO'),
	('SOE', 'Sonsonate Este', 'SO'),
	('SOO', 'Sonsonate Oeste', 'SO'),
	('USN', 'Usulután Norte', 'US'),
	('USE', 'Usulután Este', 'US'),
	('USO', 'Usulután Oeste', 'US');

INSERT INTO distritos VALUES
-- idDistrito, distrito, idMunicipio
-- Ahuachapan
	('AHN01', 'Atiquizaya', 'AHN'),
	('AHN02', 'El Refugio', 'AHN'),
	('AHN03', 'San Lorenzo', 'AHN'),
	('AHN04', 'Turín', 'AHN'),
	('AHC01', 'Ahuachapán', 'AHC'),
	('AHC02', 'Apaneca', 'AHC'),
	('AHC03', 'Concepción de Ataco', 'AHC'),
	('AHC04', 'Tacuba', 'AHC'),
	('AHS01', 'Guaymango', 'AHS'),
	('AHS02', 'Jujutla', 'AHS'),
	('AHS03', 'San Francisco Menéndez', 'AHS'),
	('AHS04', 'San Pedro Puxtla', 'AHS'),
-- Cabañas
	('CAE01', 'Sensuntepeque', 'CAE'),
	('CAE02', 'Victoria', 'CAE'),
	('CAE03', 'Dolores', 'CAE'),
	('CAE04', 'Guacotecti', 'CAE'),
	('CAE05', 'San Isidro', 'CAE'),
	('CAO01', 'Ilobasco', 'CAO'),
	('CAO02', 'Tejutepeque', 'CAO'),
	('CAO03', 'Jutiapa', 'CAO'),
	('CAO04', 'Cinquera', 'CAO'),
-- Chalatenango
	('CHN01', 'La Palma', 'CHN'),
	('CHN02', 'Citalá', 'CHN'),
	('CHN03', 'San Ignacio', 'CHN'),
	('CHC01', 'Nueva Concepción', 'CHC'),
	('CHC02', 'Tejutla', 'CHC'),
	('CHC03', 'La Reina', 'CHC'),
	('CHC04', 'Agua Caliente', 'CHC'),
	('CHC05', 'Dulce Nombre de María', 'CHC'),
	('CHC06', 'El Paraíso', 'CHC'),
	('CHC07', 'San Fernando', 'CHC'),
	('CHC08', 'San Francisco Morazán', 'CHC'),
	('CHC09', 'San Rafael', 'CHC'),
	('CHC10', 'Santa Rita', 'CHC'),
	('CHS01', 'Chalatenango', 'CHS'),
	('CHS02', 'Arcatao', 'CHS'),
	('CHS03', 'Azacualpa', 'CHS'),
	('CHS04', 'Comalapa', 'CHS'),
	('CHS05', 'Concepción Quezaltepeque', 'CHS'),
	('CHS06', 'El Carrizal', 'CHS'),
	('CHS07', 'La Laguna', 'CHS'),
	('CHS08', 'Las Vueltas', 'CHS'),
	('CHS09', 'Nombre de Jesús', 'CHS'),
	('CHS10', 'Nueva Trinidad', 'CHS'),
	('CHS11', 'Ojos de Agua', 'CHS'),
	('CHS12', 'Potonico', 'CHS'),
	('CHS13', 'San Antonio de La Cruz', 'CHS'),
	('CHS14', 'San Antonio Los Ranchos', 'CHS'),
	('CHS15', 'San Francisco Lempa', 'CHS'),
	('CHS16', 'San Isidro Labrador', 'CHS'),
	('CHS17', 'San José Cancasque', 'CHS'),
	('CHS18', 'San Miguel de Mercedes', 'CHS'),
	('CHS19', 'San José Las Flores', 'CHS'),
	('CHS20', 'San Luis del Carmen', 'CHS'),
-- Cuscatlán
	('CUN01', 'Suchitoto', 'CUN'),
	('CUN02', 'San José Guayabal', 'CUN'),
	('CUN03', 'Oratorio de Concepción', 'CUN'),
	('CUN04', 'San Bartolomé Perulapía', 'CUN'),
	('CUN05', 'San Pedro Perulapán', 'CUN'),
	('CUS01', 'Cojutepeque', 'CUS'),
	('CUS02', 'San Rafael Cedros', 'CUS'),
	('CUS03', 'Candelaria', 'CUS'),
	('CUS04', 'Monte San Juan', 'CUS'),
	('CUS05', 'El Carmen', 'CUS'),
	('CUS06', 'San Cristobal', 'CUS'),
	('CUS07', 'Santa Cruz Michapa', 'CUS'),
	('CUS08', 'San Ramón', 'CUS'),
	('CUS09', 'El Rosario', 'CUS'),
	('CUS10', 'Santa Cruz Analquito', 'CUS'),
	('CUS11', 'Tenancingo', 'CUS'),
-- La Libertad
	('LLN01', 'Quezaltepeque', 'LLN'),
	('LLN02', 'San Matías', 'LLN'),
	('LLN03', 'San Pablo Tacachico', 'LLN'),
	('LLC01', 'San Juan Opico', 'LLC'),
	('LLC02', 'Ciudad Arce', 'LLC'),
	('LLO01', 'Colón', 'LLO'),
	('LLO02', 'Jayaque', 'LLO'),
	('LLO03', 'Sacacoyo', 'LLO'),
	('LLO04', 'Tepecoyo', 'LLO'),
	('LLO05', 'Talnique', 'LLO'),
	('LLE01', 'Antiguo Cuscatlán', 'LLE'),
	('LLE02', 'Huizúcar', 'LLE'),
	('LLE03', 'Nuevo Cuscatlán', 'LLE'),
	('LLE04', 'San José Villanueva', 'LLE'),
	('LLE05', 'Zaragoza', 'LLE'),
	('LLS01', 'Comasagua', 'LLS'),
	('LLS02', 'Santa Tecla', 'LLS'),
	('LLT01', 'Chiltiupán', 'LLT'),
	('LLT02', 'Jicalapa', 'LLT'),
	('LLT03', 'La Libertad', 'LLT'),
	('LLT04', 'Tamanique', 'LLT'),
	('LLT05', 'Teotepeque', 'LLT'),
-- La Paz
	('LPO01', 'Cuyultitan', 'LPO'),
	('LPO02', 'Olocuilta', 'LPO'),
	('LPO03', 'San Juan Talpa', 'LPO'),
	('LPO04', 'San Luis Talpa', 'LPO'),
	('LPO05', 'San Pedro Masahuat', 'LPO'),
	('LPO06', 'Tapalhuaca', 'LPO'),
	('LPO07', 'San Francisco Chinameca', 'LPO'),
	('LPC01', 'El Rosario', 'LPC'),
	('LPC02', 'Jerusalén', 'LPC'),
	('LPC03', 'Mercedes La Ceiba', 'LPC'),
	('LPC04', 'Paraíso de Osorio', 'LPC'),
	('LPC05', 'San Antonio Masahuat', 'LPC'),
	('LPC06', 'San Emigdio', 'LPC'),
	('LPC07', 'San Juan Tepezontes', 'LPC'),
	('LPC08', 'San Luís La Herradura', 'LPC'),
	('LPC09', 'San Miguel Tepezontes', 'LPC'),
	('LPC10', 'San Pedro Nonualco', 'LPC'),
	('LPC11', 'Santa María Ostuma', 'LPC'),
	('LPC12', 'Santiago Nonualco', 'LPC'),
	('LPE01', 'San Juan Nonualco', 'LPE'),
	('LPE02', 'San Rafael Obrajuelo', 'LPE'),
	('LPE03', 'Zacatecoluca', 'LPE'),
-- La Unión
	('LUN01', 'Anamorós', 'LUN'),
	('LUN02', 'Bolivar', 'LUN'),
	('LUN03', 'Concepción de Oriente', 'LUN'),
	('LUN04', 'El Sauce', 'LUN'),
	('LUN05', 'Lislique', 'LUN'),
	('LUN06', 'Nueva Esparta', 'LUN'),
	('LUN07', 'Pasaquina', 'LUN'),
	('LUN08', 'Polorós', 'LUN'),
	('LUN09', 'San José La Fuente', 'LUN'),
	('LUN10', 'Santa Rosa de Lima', 'LUN'),
	('LUS01', 'Conchagua', 'LUS'),
	('LUS02', 'El Carmen', 'LUS'),
	('LUS03', 'Intipucá', 'LUS'),
	('LUS04', 'La Unión', 'LUS'),
	('LUS05', 'Meanguera del Golfo', 'LUS'),
	('LUS06', 'San Alejo', 'LUS'),
	('LUS07', 'Yayantique', 'LUS'),
	('LUS08', 'Yucuaiquín', 'LUS'),
-- Morazán
	('MON01', 'Arambala', 'MON'),
	('MON02', 'Cacaopera', 'MON'),
	('MON03', 'Corinto', 'MON'),
	('MON04', 'El Rosario', 'MON'),
	('MON05', 'Joateca', 'MON'),
	('MON06', 'Jocoaitique', 'MON'),
	('MON07', 'Meanguera', 'MON'),
	('MON08', 'Perquín', 'MON'),
	('MON09', 'San Fernando', 'MON'),
	('MON10', 'San Isidro', 'MON'),
	('MON11', 'Torola', 'MON'),
	('MOS01', 'Chilanga', 'MOS'),
	('MOS02', 'Delicias de Concepción', 'MOS'),
	('MOS03', 'El Divisadero', 'MOS'),
	('MOS04', 'Gualococti', 'MOS'),
	('MOS05', 'Guatajiagua', 'MOS'),
	('MOS06', 'Jocoro', 'MOS'),
	('MOS07', 'Lolotiquillo', 'MOS'),
	('MOS08', 'Osicala', 'MOS'),
	('MOS09', 'San Carlos', 'MOS'),
	('MOS10', 'San Francisco Gotera', 'MOS'),
	('MOS11', 'San Simón', 'MOS'),
	('MOS12', 'Sensembra', 'MOS'),
	('MOS13', 'Sociedad', 'MOS'),
	('MOS14', 'Yamabal', 'MOS'),
	('MOS15', 'Yoloaiquín', 'MOS'),
-- Santa Ana
	('SAN01', 'Masahuat', 'SAN'),
	('SAN02', 'Metapán', 'SAN'),
	('SAN03', 'Santa Rosa Guachipilín', 'SAN'),
	('SAN04', 'Texistepeque', 'SAN'),
	('SAC01', 'Santa Ana', 'SAC'),
	('SAE01', 'Coatepeque', 'SAE'),
	('SAE02', 'El Congo', 'SAE'),
	('SAO01', 'Candelaria de la Frontera', 'SAO'),
	('SAO02', 'Chalchuapa', 'SAO'),
	('SAO03', 'El Porvenir', 'SAO'),
	('SAO04', 'San Antonio Pajonal', 'SAO'),
	('SAO05', 'San Sebastián Salitrillo', 'SAO'),
	('SAO06', 'Santiago de La Frontera', 'SAO'),
-- San Miguel
	('SMN01', 'Ciudad Barrios', 'SMN'),
	('SMN02', 'Sesori', 'SMN'),
	('SMN03', 'Nuevo Edén de San Juan', 'SMN'),
	('SMN04', 'San Gerardo', 'SMN'),
	('SMN05', 'San Luis de La Reina', 'SMN'),
	('SMN06', 'Carolina', 'SMN'),
	('SMN07', 'San Antonio del Mosco', 'SMN'),
	('SMN08', 'Chapeltique', 'SMN'),
	('SMC01', 'San Miguel', 'SMC'),
	('SMC02', 'Comacarán', 'SMC'),
	('SMC03', 'Uluazapa', 'SMC'),
	('SMC04', 'Moncagua', 'SMC'),
	('SMC05', 'Quelepa', 'SMC'),
	('SMC06', 'Chirilagua', 'SMC'),
	('SMO01', 'Chinameca', 'SMO'),
	('SMO02', 'Nueva Guadalupe', 'SMO'),
	('SMO03', 'Lolotique', 'SMO'),
	('SMO04', 'San Jorge', 'SMO'),
	('SMO05', 'San Rafael Oriente', 'SMO'),
	('SMO06', 'El Tránsito', 'SMO'),
-- San Salvador
	('SSN01', 'Aguilares', 'SSN'),
	('SSN02', 'El Paisnal', 'SSN'),
	('SSN03', 'Guazapa', 'SSN'),
	('SSO01', 'Apopa', 'SSO'),
	('SSO02', 'Nejapa', 'SSO'),
	('SSE01', 'Ilopango', 'SSE'),
	('SSE02', 'San Martín', 'SSE'),
	('SSE03', 'Soyapango', 'SSE'),
	('SSE04', 'Tonacatepeque', 'SSE'),
	('SSC01', 'Ayutuxtepeque', 'SSC'),
	('SSC02', 'Mejicanos', 'SSC'),
	('SSC03', 'San Salvador', 'SSC'),
	('SSC04', 'Cuscatancingo', 'SSC'),
	('SSC05', 'Ciudad Delgado', 'SSC'),
	('SSS01', 'Panchimalco', 'SSS'),
	('SSS02', 'Rosario de Mora', 'SSS'),
	('SSS03', 'San Marcos', 'SSS'),
	('SSS04', 'Santo Tomás', 'SSS'),
	('SSS05', 'Santiago Texacuangos', 'SSS'),
-- San Vicente
	('SVN01', 'Apastepeque', 'SVN'),
	('SVN02', 'Santa Clara', 'SVN'),
	('SVN03', 'San Ildefonso', 'SVN'),
	('SVN04', 'San Esteban Catarina', 'SVN'),
	('SVN05', 'San Sebastián', 'SVN'),
	('SVN06', 'San Lorenzo', 'SVN'),
	('SVN07', 'Santo Domingo', 'SVN'),
	('SVS01', 'San Vicente', 'SVS'),
	('SVS02', 'Guadalupe', 'SVS'),
	('SVS03', 'Verapaz', 'SVS'),
	('SVS04', 'Tepetitán', 'SVS'),
	('SVS05', 'Tecoluca', 'SVS'),
	('SVS06', 'San Cayetano Istepeque', 'SVS'),
-- Sonsonate
	('SON01', 'Juayúa', 'SON'),
	('SON02', 'Nahuizalco', 'SON'),
	('SON03', 'Salcoatitán', 'SON'),
	('SON04', 'Santa Catarina Masahuat', 'SON'),
	('SOC01', 'Sonsonate', 'SOC'),
	('SOC02', 'Sonzacate', 'SOC'),
	('SOC03', 'Nahulingo', 'SOC'),
	('SOC04', 'San Antonio del Monte', 'SOC'),
	('SOC05', 'Santo Domingo de Guzmán', 'SOC'),
	('SOE01', 'Izalco', 'SOE'),
	('SOE02', 'Armenia', 'SOE'),
	('SOE03', 'Caluco', 'SOE'),
	('SOE04', 'San Julián', 'SOE'),
	('SOE05', 'Cuisnahuat', 'SOE'),
	('SOE06', 'Santa Isabel Ishuatán', 'SOE'),
	('SOO01', 'Acajutla', 'SOO'),
-- Usulután
	('USN01', 'Santiago de María', 'USN'),
	('USN02', 'Alegría', 'USN'),
	('USN03', 'Berlín', 'USN'),
	('USN04', 'Mercedes Umaña', 'USN'),
	('USN05', 'Jucuapa', 'USN'),
	('USN06', 'El triunfo', 'USN'),
	('USN07', 'Estanzuelas', 'USN'),
	('USN08', 'San Buenaventura', 'USN'),
	('USN09', 'Nueva Granada', 'USN'),
	('USE01', 'Usulután', 'USE'),
	('USE02', 'Jucuarán', 'USE'),
	('USE03', 'San Dionisio', 'USE'),
	('USE04', 'Concepción Batres', 'USE'),
	('USE05', 'Santa María', 'USE'),
	('USE06', 'Ozatlán', 'USE'),
	('USE07', 'Tecapán', 'USE'),
	('USE08', 'Santa Elena', 'USE'),
	('USE09', 'California', 'USE'),
	('USE10', 'Ereguayquín', 'USE'),
	('USO01', 'Jiquilisco', 'USO'),
	('USO02', 'Puerto El Triunfo', 'USO'),
	('USO03', 'San Agustín', 'USO'),
	('USO04', 'San Francisco Javier', 'USO');

INSERT INTO direcciones (linea1, linea2, idDistrito, codigoPostal) values
	('Col Madera, Calle 1, #1N', 'Frente al parque', 'SON02', '02311'),  -- 1					
	('Barrio El Caldero, Av 2, #2I', 'Frente al amate', 'SOE01', '02306'), -- 2
	('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', 'SOO01', '02302'), -- 3
	('Barrio El Centro, Av 4, #4S', 'Frente a catedral', 'SOC01', '02301'), -- 4
	('Col La Frontera, Calle 5, #5G', 'Km 10', 'AHS03', '02113'), -- 5
	('Res Buenavista, Calle 6, #6A', 'Contiguo a Alcaldia', 'SAC01', '02201'), -- 6
	('Res Altavista, Av 7, #7S', 'Contiguo al ISSS', 'SSC03', '01101'), -- 7
	('Col Las Margaritas, Pje 20, #2-4', 'Junto a ANDA', 'AHS01', '02114'),-- 8
	('Urb Las Magnolias, Pol 21, #2-6', 'Casa de esquina', 'LLO01', '01115'),-- 9
	('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305');-- 10

INSERT INTO cargos (cargo) VALUES 
    ('SysAdmin'),   -- 1 --
    ('Regente'),    -- 2 --
    ('Gerente'),    -- 3 --
    ('Cajero'),     -- 4 --
    ('Vendedor'),   -- 5 --
	('Bodeguero'),  -- 6 --
	('RRHH'),       -- 7 --
	('Contador'),   -- 8 --
    ('Seguridad'),  -- 9 --
    ('Ordenanza');  -- 10 --
    
INSERT INTO roles (rol) VALUES 
    ('SysAdmin'),   -- 1 --
    ('Regente'),    -- 2 ---
    ('Gerente'),    -- 3 --
    ('Cajero'),     -- 4 --
    ('Vendedor'),   -- 5 --
	('Bodeguero'),  -- 6 --
	('RRHH'),       -- 7 --
	('Contador');   -- 8 --
    
INSERT INTO opciones (opcion) values
	('Gestionar Cuentas'), -- 1 --
    ('Gestionar departamentos'), -- 2 --
    ('Gestionar municipios'), -- 3 --
    ('Gestionar distritos'), -- 4 --
    ('Gestionar direcciones'), -- 5 --
    ('Gestionar categorias'), -- 6 --
    ('Gestionar marcas'), -- 7 --
    ('Gestionar presentacionMedicamento'), -- 8 --
    ('Gestionar inventario'), -- 9 --
    ('Gestionar medicamentos'), -- 10 --
    ('Gestionar facturaCompra'), -- 11 --
    ('Gestionar detalleCompra'), -- 12 --
    ('Gestionar compras'), -- 13 --
    ('Gestionar laboratorios'), -- 14 --
    ('Gestionar metodosPago'), -- 15 --
    ('Gestionar facturaVenta'), -- 16 --
    ('Gestionar detalleVenta'), -- 17 --
    ('Gestionar ventas'), -- 18 --
    ('Gestionar clientes'), -- 19 --
    ('Gestionar cargos'), -- 20 --
    ('Gestionar empleados'), -- 21 --
    ('Gestionar roles'), -- 22 --
    ('Gestionar opciones'), -- 23 --
    ('Gestionar asignacionRolesOpciones'), -- 24 --
    ('Gestionar usuarios'), -- 25 --
    ('Gestionar sucursales'); -- 26 --

INSERT INTO sucursales (nombreSucursal, telefonoSucursal, correoSucursal, horarioApertura, horarioCierre, idDireccion) VALUES 
    ('Sucursal Este', '5555-5555', 'info@sucursaleste.com', '083000', '173000', 6),
    ('Sucursal Oeste', '6666-6666', 'info@sucursaloeste.com', '090000', '180000', 7),
    ('Sucursal Central', '7777-7777', 'info@sucursalcentral.com', '080000', '170000', 8),
    ('Sucursal Norte', '8888-8888', 'info@sucursanorte.com', '083000', '173000', 9),
    ('Sucursal Sur', '9999-9999', 'info@sucursalsur.com', '090000', '180000', 10);

INSERT INTO empleados (nombresEmpleado, apellidosEmpleado, duiEmpleado, isssEmpleado, fechaNacEmpleado, telefonoEmpleado, generoEmpleado, correoEmpleado, idCargo, idDireccion, idSucursal) VALUES 
    ('Laura', 'García', '04523695-5', '906325698', '1993-08-22', '7777-7777', 'F', 'laura@example.com', 1, 2, 1),
    ('Roberto', 'Hernández', '4321098-7', '345678901', '1990-12-10', '8888-8888', 'M', 'roberto@example.com', 2, 3, 1),
    ('Elena', 'Sánchez', '03210987-4', '234567890', '1995-04-18', '9999-9999', 'F', 'elena@example.com', 3, 4, 1),
    ('Diego', 'Martínez', '06789012-1', '123456789', '1988-11-30', '1111-1111', 'M', 'diego@example.com', 4, 5, 1),
    ('Sofía', 'López', '07654321-3', '012345678', '1992-06-25', '2222-2222', 'F', 'sofia@example.com', 5, 6, 1),
    ('Marvin', 'Reyes', '06789012-7', '012345645', '1990-05-20', '6435-4444', 'M', 'marvin@example.com', 6, 10, 1),
    ('Julio', 'Rivera', '02345678-4', '512347645', '1991-03-11', '7453-3132', 'M', 'julio@example.com', 7, 9, 1),
    ('Rodrigo', 'Zabala', '08901234-2', '384217474', '1989-11-25', '5853-1324', 'M', 'rodrigo@example.com', 8, 2, 1);

-- TABLAS DE COMPRA --
INSERT INTO categorias (nombreCategoria, descripcionCategoria) VALUES
	('Analgésicos', 'Medicamentos para aliviar el dolor'),
	('Antibióticos', 'Medicamentos para tratar infecciones bacterianas'),
	('Antiinflamatorios', 'Medicamentos para reducir la inflamación'),
	('Antipiréticos', 'Medicamentos para reducir la fiebre'),
	('Antihistamínicos', 'Medicamentos para tratar alergias'),
	('Antidepresivos', 'Medicamentos para tratar la depresión'),
	('Antieméticos', 'Medicamentos para prevenir o tratar las náuseas y los vómitos'),
	('Antiespasmódicos', 'Medicamentos para aliviar los espasmos musculares'),
	('Antiulcerosos', 'Medicamentos para tratar las úlceras estomacales'),
	('Anticonceptivos', 'Medicamentos para prevenir el embarazo');
    
INSERT INTO marcas (nombreMarca, descripcionMarca) VALUES
	('Pfizer', 'Farmacéutica líder mundial en investigación biomédica'),
	('Roche', 'Empresa suiza de productos farmacéuticos y diagnósticos'),
	('Novartis', 'Compañía farmacéutica multinacional suiza'),
	('Merck', 'Empresa estadounidense de productos farmacéuticos'),
	('GlaxoSmithKline', 'Compañía farmacéutica británica'),
	('Sanofi', 'Empresa francesa de productos farmacéuticos'),
	('Johnson & Johnson', 'Corporación multinacional estadounidense'),
	('Abbott Laboratories', 'Compañía de dispositivos médicos y productos farmacéuticos'),
	('Bayer', 'Empresa alemana de ciencias de la vida'),
	('AstraZeneca', 'Compañía farmacéutica multinacional anglo-sueca');
    
INSERT INTO presentacionMedicamento (nombrePresentacion, descripcion) VALUES
	('Tableta', 'Medicamento en forma sólida y plana, para ser ingerido por vía oral'),
	('Cápsula', 'Medicamento en forma sólida con recubrimiento gelatinoso, para ser ingerido por vía oral'),
	('Jarabe', 'Medicamento líquido y viscoso, generalmente con sabor dulce, para ser ingerido por vía oral'),
	('Gotas', 'Medicamento líquido para ser administrado en forma de gotas, generalmente por vía oral o nasal'),
	('Inyectable', 'Medicamento líquido para ser administrado mediante inyección');
    
INSERT INTO inventario (cantidadStock, noEstanteria, noPasillo) VALUES
	(100, 1, 5),
	(50, 2, 3),
	(75, 3, 2);
    
INSERT INTO laboratorios (nombreLaboratorio, numeroContacto, correoElectronicoLaboratorio, idDireccion) VALUES
    ('Laboratorios Arsal SA', '2213-1300', 'atencionalcliente@arsal.com.sv', 3),
    ('Laboratorios Biológicos (Labis)', '2255-4080', 'contacto@lbvcentroamerica.com', 4),
    ('Laboratorios DB, SA De CV', '2263-9088', 'comercializacion@laboratoriodb.com', 10);
    
INSERT INTO medicamentos (nombreMedicamento, formulaMedicamento, descripcionMedicamento, dosisMedicamento, fechaVencimiento, precioCompra, precioVenta, idCategoria, idMarca, idPresentacionMedicamento, idInventario) VALUES 
	('Paracetamol', 'Paracetamol 500mg', 'Alivio del dolor y reducción de la fiebre', '1 tableta cada 6 horas', '2025-12-31', 5.00, 8.50, 1, 1, 2, 1),
	('Ibuprofeno', 'Ibuprofeno 400mg', 'Antiinflamatorio y analgésico', '1 tableta cada 8 horas', '2026-10-15', 7.50, 12.00, 3, 2, 1, 2),
	('Amoxicilina', 'Amoxicilina 500mg', 'Antibiótico de amplio espectro', '1 cápsula cada 12 horas', '2025-05-20', 10.00, 15.00, 2, 3, 2, 3);

INSERT INTO compras (fechaHoraCompra, totalCompra, idLaboratorio) VALUES
    ('2024-04-01 10:30:00', 500.00, 1),
    ('2024-05-02 10:30:00', 700.00, 3),
    ('2024-06-03 10:30:00', 400.00, 2);

INSERT INTO facturaCompra (fechaHoraFacturacion, ivaFacturaCompra, creditoFiscalCompra) VALUES
    ('2024-04-01 10:30:00', 65.00, 65.00),
    ('2024-05-02 10:30:00', 91.00, 91.00),
    ('2024-06-03 10:30:00', 52.00, 52.00);
    
INSERT INTO detalleCompra (cantidadComprada, precioUnitario, subTotalCompra, idCompra, idMedicamento, idFacturaCompra) VALUES
    (50, 10.00, 500.00, 1, 1, 1),
    (70, 10.00, 700.00, 2, 3, 2),
    (40, 10.00, 400.00, 3, 2, 3);
    
-- TABLAS DE VENTA --
INSERT INTO metodosPago (nombreMetodo, descripcionMetodoPago) VALUES
	('Efectivo', 'Pago en efectivo en el momento de la compra'),
	('Tarjeta de crédito', 'Pago con tarjeta de crédito'),
	('Tarjeta de débito', 'Pago con tarjeta de débito');

INSERT INTO clientes (nombresCliente, apellidosCliente, telefonoCliente, generoCliente, duiCliente, fechaNacCliente, correoCliente, idDireccion) VALUES 
    ('Juan', 'Pérez', '7777-8888', 'M', '12345678-5', '1985-05-10', 'juanperez@example.com', 1),
    ('María', 'López', '9999-0000', 'F', '87654321-2', '1990-10-15', 'marialopez@example.com', 2),
    ('Pedro', 'Gómez', '3333-4444', 'M', '13579246-0', '1988-03-20', 'pedrogomez@example.com', 3),
    ('Fernando', 'Ceren', '0000-0000', 'M', '21222129-7', '2002-10-29', 'ferceren10@example.com', 4);

INSERT INTO ventas (fechaHoraVenta, totalVenta, idCliente, idEmpleado) VALUES 
    ('2024-04-06 10:30:00', 400.00, 1, 1),
    ('2024-05-04 10:30:00', 700.00, 2, 4),
    ('2024-06-20 10:30:00', 50.00, 3, 4);

INSERT INTO facturaVenta (fechaHoraFacturacion, ivaFacturaVenta, creditoFiscalVenta, idMetodoPago) VALUES 
    ('2024-04-06 10:00:00', 52.00, 52.00, 3),
    ('2024-05-04 10:30:00', 91.00, 91.00, 2),
	('2024-06-20 10:30:00', 6.50, 6.50, 1);
    
INSERT INTO detalleVenta (cantidadVendida, precioUnitario, subTotalVenta, idVenta, idMedicamento, idFacturaVenta) VALUES 
    (50, 8.00, 400.00, 1, 1, 1),
    (50, 14.00, 700.00, 2, 2, 2),
    (20, 2.5, 50.00, 3, 3, 3);
    
INSERT INTO asignacionRolesOpciones (idRol, idOpcion) VALUES
-- SysAdmin: Todos los permisos
   ('1','1'),  -- cuentas
   ('1','2'),  -- departamentos
   ('1','3'),  -- municipios
   ('1','4'),  -- distritos
   ('1','5'),  -- direcciones
   ('1','6'),  -- categorias
   ('1','7'),  -- marcas
   ('1','8'),  -- presentacion de medicamento
   ('1','9'),  -- inventario
   ('1','10'), -- medicamentos
   ('1','11'), -- factura de compra
   ('1','12'), -- detalle de compra
   ('1','13'), -- compras
   ('1','14'), -- laboratorios
   ('1','15'), -- metodos de pago
   ('1','16'), -- factura de venta
   ('1','17'), -- detalle de venta
   ('1','18'), -- ventas
   ('1','19'), -- clientes
   ('1','20'), -- cargos
   ('1','21'), -- empleados
   ('1','22'), -- roles
   ('1','23'), -- opciones
   ('1','24'), -- asignacion de roles opciones
   ('1','25'), -- usuarios
   ('1','26'), -- sucursales

-- Regente: CRUD(medicamentos,formulas,sucursales)
   ('2','10'),
   ('2','26'),

-- Gerente: Todos los permisos
   ('3','1'),  -- cuentas
   ('3','2'),  -- departamentos
   ('3','3'),  -- municipios
   ('3','4'),  -- distritos
   ('3','5'),  -- direcciones
   ('3','6'),  -- categorias
   ('3','7'),  -- marcas
   ('3','8'),  -- presentacion de medicamento
   ('3','9'),  -- inventario
   ('3','10'), -- medicamentos
   ('3','11'), -- factura de compra
   ('3','12'), -- detalle de compra
   ('3','13'), -- compras
   ('3','14'), -- laboratorios
   ('3','15'), -- metodos de pago
   ('3','16'), -- factura de venta
   ('3','17'), -- detalle de venta
   ('3','18'), -- ventas
   ('3','19'), -- clientes
   ('3','20'), -- cargos
   ('3','21'), -- empleados
   ('3','22'), -- roles
   ('3','23'), -- opciones
   ('3','24'), -- asignacion de roles opciones
   ('3','25'), -- usuarios
   ('3','26'), -- sucursales

-- Cajero: CRUD(clientes,ventas,detalle de venta,factura de venta,direcciones,metodos de pago) LECTURA(distritos,municipios,departamentos)
   -- solo lectura
   ('4','2'),  -- departamentos
   ('4','3'),  -- municipios
   ('4','4'),  -- distritos
   -- 
   ('4','5'),  -- direcciones
   ('4','15'), -- metodos de pago
   ('4','16'), -- factura de venta
   ('4','17'), -- detalle de venta
   ('4','18'), -- ventas
   ('4','19'), -- clientes

-- Vendedor: CRUD(clientes,medicamentos,direcciones,ventas,detalle de venta,factura de venta) LECTURA(distritos,municipios,departamentos)
   -- solo lectura 
   ('5','2'),  -- departamentos
   ('5','3'),  -- municipios
   ('5','4'),  -- distritos
   --
   ('5','19'), -- clientes
   ('5','10'), -- medicamentos
   ('5','5'),  -- direcciones
   ('5','18'), -- ventas
   ('5','17'), -- detalle de venta
   ('5','16'), -- factura de venta

-- Bodegero: CRUD(inventario,medicamentos,categorias,presentacion de medicamento,marcas,compras,detalle de compra,factura de compra,laboratorios,direcciones,sucursales) LECTURA(distritos,municipios,departamentos)
   -- solo lectura
   ('6','2'),  -- departamentos
   ('6','3'),  -- municipios
   ('6','4'),  -- distritos
   -- 
   ('6','9'),  -- inventario
   ('6','10'), -- medicamentos
   ('6','6'),  -- categorias
   ('6','8'),  -- presentacion de medicamento
   ('6','7'),  -- marcas
   ('6','13'), -- compras
   ('6','12'), -- detalle de compra
   ('6','11'), -- factura de compra
   ('6','14'), -- laboratorios
   ('6','5'),  -- direcciones
   ('6','26'), -- sucursales

-- RRHH: CRUD(empleados,cargos,direcciones) LECTURA(distritos,municipios,departamentos)
   -- solo lectura 
   ('7','2'),  -- distritos
   ('7','3'),  -- municipios
   ('7','4'),  -- departamentos
   --
   ('7','21'), -- empleados
   ('7','20'), -- cargos
   ('7','5'),  -- direcciones

-- Contador: CRUD(ventas,detalle de venta,factura de venta,compras,detalle de compra,factura de compra,metodos de pago)
   ('8','18'), -- ventas
   ('8','17'), -- detalle de venta
   ('8','16'), -- factura de venta
   ('8','13'), -- compras
   ('8','12'), -- detalle de compra
   ('8','11'), -- factura de compra
   ('8','15'); -- metodos de pago
   
INSERT INTO usuarios (usuario, contrasenia, idRol, idEmpleado) VALUES
   ('admin_lauragarcia', 'root', '1', '1'), -- Administrador --
   ('regen_robertohernandez', 'Hernandez123', '2', '2'), -- Regente --
   ('geren_elenasanchez', 'Elena234', '3', '3'), -- Gerente --
   ('caje_diegomartinez', 'Martinez345', '4', '4'), -- Cajera --
   ('vende_sofialopez', 'Lopez456', '5', '5'), -- Vendedora --
   ('bodeg_marvinreyes', 'Reyes567', '6', '6'), -- Bodeguero --
   ('rrhh_juliorivera', 'Rivera678', '7', '7'), -- RRHH --
   ('conta_rodrigozabala', 'Zabala789', '8', '8'); -- Contador --
   
   