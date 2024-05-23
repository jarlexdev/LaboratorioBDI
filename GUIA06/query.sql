-- CONSULTANDO UNA VENTA --
SELECT v.idVenta, v.fechaHoraVenta ,c.nombresCliente, e.nombresEmpleado, m.nombreMedicamento, m.precioVenta
FROM Ventas v
INNER JOIN Clientes c ON v.idCliente = c.idCliente
INNER JOIN Empleados e ON v.idEmpleado = e.idEmpleado
INNER JOIN detalleVenta dv ON v.idVenta = dv.idVenta
INNER JOIN Medicamentos m ON dv.idMedicamento = m.idMedicamento
WHERE v.idVenta = 1;