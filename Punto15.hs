--  Realizar un algoritmo que muestre los números primos que existen para un número 
-- ingresado.

esPrimo :: Int -> Bool -- Función que verifica si un número es primo
esPrimo n
    | n <= 1 = False -- Los números menores o iguales a 1 no son primos
    | otherwise = not $ any (\x -> n `mod` x == 0) [2..isqrt n]
    -- [2..isqrt n] genera una lista de números desde 2 hasta la raíz cuadrada de n
    -- \x -> n mod x == 0 para cada x, verifica si n es divisible por x
    -- any verifica si algun elemento de la lista cumple la condición
    -- Si no hay divisores (False), el número es primo (True)
    where isqrt = floor . sqrt . fromIntegral
    -- convierte n a un float
    -- calcula la raíz cuadrada
    -- redondea hacia abajo

primosHasta :: Int -> [Int]
primosHasta n = [x | x <- [2..n], esPrimo x]
-- Genera una lista dsde 2 hasta n
-- filtra los números primos usando la función esPrimo
-- solo los primos se quedan en la lista


-- Función para mostrar los primos de forma legible
mostrarPrimos :: Int -> String
mostrarPrimos n = "Números primos hasta " ++ show n ++ ":\n" ++
                  show (primosHasta n)

-- Para probar en GHCi:
-- :l Punto15
-- putStrLn $ mostrarPrimos 20