module Library where
import PdePreludat

type Sabor = String
type Cantidad = Number
type Pedido =  (Sabor,Cantidad)
type CantPorciones = Number
type CantPedidos = Pedido -> Pedido ->Pedido -> Pedido ->Pedido -> Pedido


esMuzza :: Pedido -> Number
esMuzza (sabor,cantidad) 
 | sabor == "muzza" = cantidad
 | otherwise = 0


unaPizza :: CantPorciones -> Number
unaPizza cantporciones = cantporciones/8

cantidadDePorciones :: Pedido -> Pedido ->Pedido -> Pedido ->Pedido -> Pedido -> Number
cantidadDePorciones pedido1 pedido2 pedido3 pedido4 pedido5 pedido6 =esMuzza(pedido1)+esMuzza(pedido2)+esMuzza(pedido3)+esMuzza(pedido4)+esMuzza(pedido5)+esMuzza(pedido6)

pizzasNecesarias :: CantPorciones -> Number
pizzasNecesarias = ceiling

cuantasMuzzas :: Pedido -> Pedido ->Pedido -> Pedido ->Pedido -> Pedido -> Number
cuantasMuzzas= cantidadDePorciones