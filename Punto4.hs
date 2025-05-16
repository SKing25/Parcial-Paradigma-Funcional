-- Realice un algoritmo que almacene 15 valores y los ordena en orden inverso, de mayor a
-- menor y de menor a mayor.

-- Necesitamos importar Data.List para la función sort
import Data.List (sort)

ordenarMayorAMenor :: [Int] -> [Int] -- Función que recibe una lista de enteros y devuelve la lista ordenada de mayor a menor
ordenarMayorAMenor = reverse.sort -- ordena la lista y luego la invierte

ordenarMenorAMayor :: [Int] -> [Int] -- Función que recibe una lista de enteros y devuelve la lista ordenada de menor a mayor
ordenarMenorAMayor = sort -- ordena la lista de menor a mayor

-- Datos de ejemplo
listaEjemplo :: [Int]
listaEjemplo = [5, 3, 8, 1, 4, 7, 2, 6]

-- Para ejecutar:
-- :l Punto4
-- OrdenarMayorAMenor listaEjemplo
-- OrdenarMenorAMayor listaEjemplo