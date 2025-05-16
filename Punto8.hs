-- Realice un algoritmo que cargue en un arreglo el cuadrado de los números del 1 al 10 y
-- luego los visualice.
cuadrados1Al10 :: [Int]
cuadrados1Al10 = map (^2) [1..10] -- transformo cada elemento de la lista [1..10] al cuadrado

-- Para ejecutar:
-- :l Punto8
-- cuadrados1Al10