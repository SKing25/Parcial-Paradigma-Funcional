-- Realice un algoritmo que cree un vector de longitud n donde n lo define el usuario calcula
-- número mayor, menor y la moda.


mayorMenorModa :: [Int] -> String
mayorMenorModa lista = "maximo: " ++ show (maximum lista) ++ "\n" ++
                       "minimo: " ++ show (minimum lista) ++ "\n" ++
                       "moda: " ++ show (calcularModa lista)

-- Función auxiliar para calcular la moda
calcularModa :: [Int] -> Int -- Función que recibe una lista de enteros y devuelve un entero
 
calcularModa lista = snd $ maximum [(length (filter (==x) lista), x) | x <- lista]
    -- se va a crear una lista de tuplas 
    -- donde el primer elemento es la cantidad de veces que aparece x en la lista
    -- y el segundo elemento es x
    -- La función filter filtra los elementos de la lista que son iguales a x
    -- La función length cuenta la cantidad de elementos que cumplen la condición
    -- La función maximum devuelve el elemento máximo de la lista
    -- La función snd devuelve el segundo elemento de una tupla

-- Datos de ejemplo
listaEjemplo :: [Int]
listaEjemplo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10]

-- Para ejecutar:
-- :l Punto3
-- putStrLn $ mayorMenorModa listaEjemplo