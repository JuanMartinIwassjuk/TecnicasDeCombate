module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero
type  Horas  =  Number
type  Objetivo  =  String
type  Presion  =  Number
type  Golpe  =  Objetivo  ->  Number


presionGolpe  ::  Horas  ->  Objetivo  ->  Presion
presionGolpe horas objetivo = poder horas / fortaleza objetivo

poder  ::  Horas  ->  Number
poder = ( *  15 )

fortaleza  ::  Objetivo  ->  Number
fortaleza = (2*) .  length



gomuGomu  ::  Golpe
gomuGomu = presionGolpe 180

normalesConsecutivos  ::  Golpe
normalesConsecutivos = presionGolpe 240

objetivoEsDificil :: Objetivo  -> Bool
objetivoEsDificil = (< 100) . gomuGomu

objetivoFocalizado :: Objetivo -> String
objetivoFocalizado = take 7

between :: Ord (a) => a -> a -> a -> Bool
between a c b = a <= b && b<=c




objetivoEsAccecible :: Objetivo -> Bool
objetivoEsAccecible = between 200 400.normalesConsecutivos.objetivoFocalizado