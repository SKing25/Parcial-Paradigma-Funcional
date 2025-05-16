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

-- Datos de ejemplo
temperaturasEjemplo :: [Float]
temperaturasEjemplo = [30.5, 32.0, 28.5, 31.0, 29.5, 33.0, 27.0,
                         34.5, 35.0, 36.0, 37.5, 38.0, 39.0,
                         40.0, 41.5, 42.0, 43.0, 44.5]

-- Para ejecutar:
-- :l Punto9
-- putStrLn $ estadisticasTemperatura temperaturasEjemplo