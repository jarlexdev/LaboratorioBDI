-- CONSULTAS UTILIZANDO INNER JOIN --

-- CONSULTANDO 01: 
		-- Mostrar una lista de los medicamentos que se tienen a la venta, 
		-- con los detalles del tipo de producto, presentación y proveedor (laboratorio)
SELECT 
    med.nombreMedicamento, 
    cat.nombreCategoria,
    mar.nombreMarca,
    pre.nombrePresentacion,
    lab.nombreLaboratorio
FROM medicamentos med
    INNER JOIN categorias cat ON med.idCategoria = cat.idCategoria
    INNER JOIN marcas mar ON med.idMarca = mar.idMarca
    INNER JOIN presentacionMedicamento pre ON med.idPresentacionMedicamento = pre.idPresentacionMedicamento
    INNER JOIN detalleCompra dc ON med.idMedicamento = dc.idMedicamento
    INNER JOIN compras com ON dc.idCompra = com.idCompra
    INNER JOIN laboratorios lab ON com.idLaboratorio = lab.idLaboratorio;
    
-- CONSULTA 02: 
	-- Mostrar una lista de las ventas realizadas, con los detalles del cliente que compró, 
    -- el vendedor, y el monto de la venta incluyendo impuestos fiscales como el IVA y
    -- crédito fiscal (si está registrando este último)
SELECT
  ven.fechaHoraVenta AS Fecha_Venta,
  CONCAT(nc.nombresCliente, ' ', nc.apellidosCliente) AS Cliente,
  CONCAT(emp.nombresEmpleado, ' ', emp.apellidosEmpleado) AS Empleado,
  dv.cantidadVendida,
  dv.precioUnitario,
  (dv.cantidadVendida * dv.precioUnitario) AS SubTotal,
  fv.ivaFacturaVenta AS IVA,
  fv.creditoFiscalVenta AS Credito_Fiscal,
  (dv.cantidadVendida * dv.precioUnitario) + fv.ivaFacturaVenta AS Total
FROM ventas ven
	INNER JOIN detalleVenta dv ON ven.idVenta = dv.idVenta
	INNER JOIN medicamentos med ON dv.idMedicamento = med.idMedicamento
	INNER JOIN clientes nc ON ven.idCliente = nc.idCliente
	INNER JOIN empleados emp ON ven.idEmpleado = emp.idEmpleado
	INNER JOIN facturaVenta fv ON dv.idFacturaVenta = fv.idFacturaVenta;
