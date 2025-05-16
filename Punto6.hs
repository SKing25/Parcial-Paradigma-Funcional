-- Desarrollar un programa que llene un arreglo los 30 primeros números pares los muestre y
-- obtenga la suma y el promedio

primeros30Pares :: [Int]
primeros30Pares = take 30 [2,4..] -- toma los primeros 30 elementos de la lista infinita de números pares

sumaPrimeros30Pares :: Int 
sumaPrimeros30Pares = sum primeros30Pares -- suma los elementos de la lista primeros30Pares

promedioPrimeros30Pares :: Float
promedioPrimeros30Pares = fromIntegral sumaPrimeros30Pares / 30 -- calcula el promedio de los elementos de la lista primeros30Pares

-- Para ejecutar:
-- :l Punto6
-- primeros30Pares
-- sumaPrimeros30Pares
-- promedioPrimeros30Pares