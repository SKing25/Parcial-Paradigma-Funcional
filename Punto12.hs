-- Una persona debe realizar un muestreo con 50 personas para determinar el promedio de
-- peso de los niños, jóvenes, adultos y viejos que existen en su zona habitacional. Se
-- determinan las categorías con base en la siguiente, tabla:
-- |categoria   |edad       |
-- |niños       |0-12       |
-- |adolecente  |13-17      |
-- |jovenes     |18-29      |
-- |adultos     |30-49      |
-- |viejos      |mayor 50   |

categorizar :: Int -> String
categorizar edad
    | edad >= 0 && edad <= 12 = "Niño"
    | edad >= 13 && edad <= 17 = "Adolescente"
    | edad >= 18 && edad <= 29 = "Joven"
    | edad >= 30 && edad <= 49 = "Adulto"
    | otherwise  = "Viejo"

promedioCategoria :: [(Int, Float)] -> String -> Float
promedioCategoria personas categoria =
    let pesos = [peso | (edad, peso) <- personas, categorizar edad == categoria]
    in if null pesos then 0 else sum pesos / fromIntegral (length pesos)
