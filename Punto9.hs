-- Realice un algoritmo que lea la temperatura al medio día durante todos los días de un mes
-- y luego informar la temperatura promedio mensual, así como el día más caluroso y el más
-- frio.

estadisticasTemperatura :: [Float] -> String
estadisticasTemperatura temperaturas =
    let promedio = sum temperaturas / fromIntegral (length temperaturas)
        diaMasCaluroso = maximum temperaturas 
        diaMasFrio = minimum temperaturas
    in "promedio: " ++ show promedio ++ "\n" ++
       "dia mas caluroso: " ++ show diaMasCaluroso ++ "\n" ++
       "dia mas frio: " ++ show diaMasFrio

