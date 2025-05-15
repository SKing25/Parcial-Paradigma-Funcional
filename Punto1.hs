-- Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio
-- con descuento. El descuento lo hace en base a la clave, si la clave es 01 el descuento es del
-- 10% y si la clave es 02 el descuento es del 20% (solo existen dos claves).

-- Definicion de una funcion que recibe String, String y Float y devuelve String
calcularPrecioConDescuento :: String -> String -> Float -> String
-- Función que recibe el nombre, la clave y el precio original
calcularPrecioConDescuento nombre clave precioOriginal = 
    let descuento -- Definición de la variable descuento
          | clave == "01" = 0.10 -- Descuento del 10% para clave "01"
          | clave == "02" = 0.20 -- Descuento del 20% para clave "02"
          | otherwise = 0 -- Sin descuento para otras claves
        precioFinal = precioOriginal * (1 - descuento) -- Cálculo del precio final
    in "nombre: " ++ nombre ++ "\n" ++ 
        "clave: " ++ clave ++ "\n" ++
        "precio original: $" ++ show precioOriginal ++ "\n" ++
        "precio con descuento: $" ++ show precioFinal