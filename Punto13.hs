-- Al cerrar un expendio de naranjas, 15 clientes que aún no han pagado recibirán un 15% de 
-- descuento si compran más de 10 kilos. Determinar cuánto pagará cada cliente y cuanto 
-- percibirá la tienda por esas compras.

calcularPrecio :: Float -> Float -> Float
calcularPrecio kilos precioKilo =
    let precio = kilos * precioKilo
    in if kilos > 10 then precio * 0.85
       else precio

mostrarCompra :: [(Float, Float)] -> String
mostrarCompra compras = 
    unlines ["Cliente " ++ show i ++ ": $" ++ show (calcularPrecio k p) 
            | (i, (k, p)) <- zip [0..] compras] ++
            "Total tienda: $" ++ show (sum [calcularPrecio k p | (k, p) <- compras])

-- Datos de ejemplo
compras :: [(Float, Float)]
compras = [
    (12, 25), (8, 25), (15, 25),
    (11, 25), (9, 25), (13, 25),
    (7, 25),  (14, 25), (10, 25),
    (16, 25), (8, 25), (12, 25),
    (15, 25), (11, 25), (9, 25)]

-- Para ejecutar:
-- :l Punto13
-- putStrLn $ mostrarCompra compras