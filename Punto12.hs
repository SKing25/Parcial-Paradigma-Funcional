-- Una persona debe realizar un muestreo con 50 personas para determinar el promedio de
-- peso de los niños, jóvenes, adultos y viejos que existen en su zona habitacional. Se
-- determinan las categorías con base en la siguiente, tabla:
-- |categoria   |edad       |
-- |niños       |0-12       |
-- |adolecente  |13-17      |
-- |jovenes     |18-29      |
-- |adultos     |30-49      |
-- |viejos      |mayor 50   |

categorias :: [String] -- Lista de categorías
categorias = ["Niño", "Adolescente", "Joven", "Adulto", "Viejo"]

categorizar :: Int -> String -- Función para categorizar la edad
categorizar edad 
    | edad >= 0 && edad <= 12 = "Niño"
    | edad >= 13 && edad <= 17 = "Adolescente"
    | edad >= 18 && edad <= 29 = "Joven"
    | edad >= 30 && edad <= 49 = "Adulto"
    | otherwise  = "Viejo"

promedioCategoria :: [(Int, Float)] -> String -> Float -- Función para calcular el promedio por categoría
promedioCategoria personas categoria =
    let pesos = [peso | (edad, peso) <- personas, categorizar edad == categoria]
    -- cojemos el peso de cada tupla en la lista de personas
    -- se filtra el peso de acuerdo a la categoria de la edad
    in if null pesos then 0 else sum pesos / fromIntegral (length pesos)
    -- si la lista de pesos está vacía, devolvemos 0, de lo contrario calculamos el promedio

mostrarPromedios :: [(Int, Float)] -> String -- Función para mostrar los promedios de cada categoría
mostrarPromedios personas = 
    unlines [ "Promedio " ++ cat ++ ": " ++ show (promedioCategoria personas cat) | cat <- categorias ]
    -- unlines convierte una lista de String en un solo String con saltos de línea
    -- por cada categoria en la lista de categorias, se calcula el promedio
            
-- Datos de ejemplo
personas :: [(Int, Float)]
personas = [
    (8, 25.5), (15, 55.2), (25, 70.1), (35, 80.3), (55, 75.4),
    (10, 30.0), (16, 58.5), (28, 72.3), (40, 82.1), (60, 70.8)
    ]

-- Para ejecutar:
-- :l Punto12
-- putStrLn $ mostrarPromedios personas