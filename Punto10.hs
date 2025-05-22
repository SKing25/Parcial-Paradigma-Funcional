-- Realice un algoritmo que defina un vector de números y calcule si existe algún número en
-- el vector cuyo valor equivale a la suma del resto de números del vector.

existeSumaIgual :: [Int] -> Bool
existeSumaIgual lista = any (\x -> x == sum (filter (/= x) lista)) lista
    -- any verica si algun elemento cumple la condicion
    -- \x -> lambda que toma cada elemento x de la lista
    -- filter (/= x) lista crea una nueva lista sin x
    -- sum suma los elementos de la lista (la nueva lista)
    -- compara si la suma es igual a x
    
-- Datos de ejemplo
listaEjemplo :: [Int]
listaEjemplo = [1, 2, 3, 4, 5, 15]

-- Para ejecutar:
-- :l Punto10
-- existeSumaIgual listaEjemplo
