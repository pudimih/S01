data Bebida = Bebida { nome :: String, tipo :: String, preco :: Double }
    deriving (Show)

tipoCafe = "Café"
tipoCha = "Chá"
tipoSuco = "Suco"

data StatusPedido = Aberto | Entregue | Cancelado
    deriving (Show, Eq)

data Pedido = Pedido { bebidas :: [Bebida], statusPedido :: StatusPedido }
    deriving (Show)

precoBebida :: Bebida -> Double
precoBebida (Bebida _ _ p) = p

calculaSubtotal :: [Bebida] -> Double
calculaSubtotal listaDeBebidas = sum (map precoBebida listaDeBebidas)

taxaServico :: Double
taxaServico = 5.0


valorTotalPedido :: Pedido -> Double
valorTotalPedido pedido
    | statusPedido pedido == Cancelado = 0.0
    | otherwise = total
    where
        sub = calculaSubtotal (bebidas pedido)
        total = sub + taxaServico

primeiraBebida :: Pedido -> String
primeiraBebida pedido =
    case bebidas pedido of
        []    -> "Nenhuma bebida no pedido."
        (x:_) -> nome x


bebidaA = Bebida "Cappuccino" tipoCafe 10.0
bebidaB = Bebida "Chá Verde" tipoCha 8.0
bebidaC = Bebida "Suco de Laranja" tipoSuco 12.0


pedido1 = Pedido [bebidaA, bebidaB] Aberto
pedido2 = Pedido [bebidaC] Entregue
pedido3 = Pedido [bebidaA, bebidaB] Cancelado


main :: IO ()
main = do
    putStrLn "--- Simulação de Pedidos na Cafeteria ---"

    putStr "Pedido 1 (Aberto) - Valor Total: R$ "
    print (valorTotalPedido pedido1)

    putStr "Pedido 2 (Entregue) - Valor Total: R$ "
    print (valorTotalPedido pedido2)

    putStr "Pedido 3 (Cancelado) - Valor Total: R$ "
    print (valorTotalPedido pedido3)

    putStrLn "\nPrimeira bebida no Pedido 2: "
    putStrLn (primeiraBebida pedido2)
