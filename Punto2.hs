-- La empresa Icollantas desea un sistema de información para calcular el total que una
-- persona debe pagar en un punto de venta, si el precio de cada llanta es de $150.000 si se
-- compran menos de 5 llantas y de $138.000 si se compran 5 o más

-- Definición de una función que recibe un entero y devuelve un Float
calcularPrecioLlantas :: Int -> Float
-- Función que calcula el precio total de las llantas
calcularPrecioLlantas cantidad
    | cantidad < 5 = fromIntegral cantidad * 150000 -- Precio por llanta si se compran menos de 5
    | otherwise    = fromIntegral cantidad * 138000 -- Precio por llanta si se compran 5 o más

-- Para ejecutar:
-- :l Punto2
-- calcularPrecioLlantas 3
-- calcularPrecioLlantas 6