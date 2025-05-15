-- Cree una función que cuente el número de veces que aparece x en una lista. 

contarApariciones :: Eq a => a -> [a] -> Int
-- Eq a => hace que a se pueda comparar con == 
-- la funcion recibe un elemento de tipo a y una lista de tipo a
-- y devuelve un entero
contarApariciones x = length.filter (== x) -- filtra los elementos de la lista que son iguales a x