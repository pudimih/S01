
data Item = Item { nome :: String, categoria :: String, preco :: Double }
    deriving (Show)

arma = "Arma"
equipamento = "Equipamento"
pocao = "Poção"

data StatusCompra = Aberta | Entregue | Cancelada
    deriving (Show, Eq)

data CompraZelda = CompraZelda { itensComprados :: [Item], statusCompra :: StatusCompra }
    deriving (Show)

precoItem :: Item -> Double
precoItem (Item _ _ p) = p

calculaSubtotal :: [Item] -> Double
calculaSubtotal listaDeItens = sum (map precoItem listaDeItens)

calculaDesconto :: [Item] -> Double
calculaDesconto listaDeItens
    | subtotal > 200 = subtotal * 0.10
    | otherwise      = 0.0
    where
        subtotal = calculaSubtotal listaDeItens


valorFinal :: CompraZelda -> Double
valorFinal compra
    | statusCompra compra == Cancelada = 0.0
    | subtotal > 200 = subtotal - desconto           
    | otherwise      = subtotal + 15.0                
    where
        subtotal = calculaSubtotal (itensComprados compra)
        desconto = calculaDesconto (itensComprados compra)


primeiroItem :: CompraZelda -> String
primeiroItem compra =
    case itensComprados compra of
        []    -> "Nenhum item na compra."
        (x:_) -> nome x


itemA = Item "Faca" arma 70.0
itemB = Item "Peitoral" equipamento 8000.0
itemC = Item "Poção de invisibilidade" pocao 125.0

compra1 = CompraZelda [itemA, itemB] Aberta
compra2 = CompraZelda [itemC] Entregue
compra3 = CompraZelda [itemA, itemB] Cancelada

main :: IO ()
main = do
    putStrLn "--- Simulação de Compra ---"

    putStr "Compra 1 (Aberta) - Valor Final: R$ "
    print (valorFinal compra1)

    putStr "Compra 2 (Entregue) - Valor Final: R$ "
    print (valorFinal compra2)

    putStr "Compra 3 (Cancelada) - Valor Final: R$ "
    print (valorFinal compra3)

    putStrLn "\nPrimeiro item na Compra 2: "
    putStrLn (primeiroItem compra2)
