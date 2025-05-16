-- Generar las tablas de multiplicar del 1 al 10 con 10 multiplicandos por cada tabla.

generarTabla :: Int -> String
generarTabla n = unlines [show n ++ " x " ++ show m ++ " = " ++ show (n * m) | m <- [1..10]]
-- Genera la tabla de multiplicar para un número n
-- n es el número de la tabla
-- m es el multiplicando, que va de 1 a 10

-- Genera todas las tablas del 1 al 10
generarTablas :: String
generarTablas = unlines ["Tabla del " ++ show n ++ ":\n" ++ generarTabla n | n <- [1..10]]
-- Genera las tablas de multiplicar del 1 al 10

-- Para ejecutar:
-- :l Punto14
-- putStrLn generarTablas