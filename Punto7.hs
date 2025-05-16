-- Genere un arreglo de tamaño 10 con números reales leídos desde teclado. Calcule el
-- promedio e indique cuántos elementos del arreglo son mayores que el promedio y
-- cuántos menores o iguales.

contarMayoresMenoresPromedio :: [Float] -> String
contarMayoresMenoresPromedio lista =
    let promedio = sum lista / fromIntegral (length lista) -- suma la lista y la divide por la longitud
        mayores = length $ filter (> promedio) lista -- filtra los elementos de la lista que son mayores al promedio
        menoresIguales = length $ filter (<= promedio) lista -- filtra los elementos de la lista que son menores o iguales al promedio
    in "promedio: " ++ show promedio ++ "\n" ++
       "mayores: " ++ show mayores ++ "\n" ++
       "menores: " ++ show menoresIguales

-- Datos de ejemplo
listaEjemplo :: [Float]
listaEjemplo = [1.5, 2.0, 3.5, 4.0, 5.5, 6.0, 7.5, 8.0, 9.5, 10.0]

-- Para ejecutar:
-- :l Punto7
-- putStrLn $ contarMayoresMenoresPromedio listaEjemplo