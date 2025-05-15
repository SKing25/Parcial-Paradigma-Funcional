-- Simular el comportamiento de un reloj digital, imprimiendo la hora, minutos y segundos
-- de un día desde las 0:00:00 horas hasta las 23:59:59 horas.

formatearHora :: Int -> Int -> Int -> String
formatearHora h m s = agregarCero h ++ ":" ++ agregarCero m ++ ":" ++ agregarCero s
    where
        agregarCero n = if n < 10 then "0" ++ show n -- Agrega un cero a la izquierda si el número es menor que 10 
                        else show n -- Si no, lo convierte a String directamente

generarHoras :: [String] -- funcion que devuelve una lista de String
generarHoras = [formatearHora h m s | h <- [0..23], m <- [0..59], s <- [0..59]]
    -- lista por comprension que genera todas las horas, minutos y segundos
    -- funciona como un ciclo anidado (entre mas a la derecha mas adentro esta en el ciclo)
    -- h va de 0 a 23, m va de 0 a 59 y s va de 0 a 59

-- > mapM_ putStrLn generarHoras