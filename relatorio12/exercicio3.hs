
data Banda = Banda { nome :: String, genero :: String, valorCache :: Double }
    deriving (Show)

data StatusEvento = Ativo | Encerrado | Cancelado
    deriving (Show, Eq)
    
data Evento = Evento { bandas :: [Banda], statusEvento :: StatusEvento }
    deriving (Show)

precoBanda :: Banda -> Double
precoBanda (Banda _ _ p) = p

calculaSubtotal :: [Banda] -> Double
calculaSubtotal listaDeBandas = sum (map precoBanda listaDeBandas)

taxaProducao :: Double -> Double
taxaProducao subtotal = subtotal * 0.20


custoTotalEvento :: Evento -> Double
custoTotalEvento evento
    | statusEvento evento == Cancelado = 0.0
    | otherwise = subtotal + taxa
    where
        subtotal = calculaSubtotal (bandas evento)
        taxa = taxaProducao subtotal
        
bandaAbertura :: Evento -> String
bandaAbertura evento =
    case bandas evento of
        []    -> "Nenhuma banda de abertura."
        (x:_) -> nome x

bandaEncerramento :: Evento -> String
bandaEncerramento evento =
    case bandas evento of
        [] -> "Nenhuma banda de encerramento."
        xs -> nome (last xs)

banda1 = Banda "Twenty one Pilots" "Rock" 50000.0
banda2 = Banda "my chemical romance" "Emo" 30900.0
banda3 = Banda "Muse" "Rock" 12000.0

evento1 = Evento [banda1, banda2, banda3] Ativo
evento2 = Evento [banda2, banda3] Encerrado
evento3 = Evento [banda1, banda3] Cancelado

main :: IO ()
main = do
    putStrLn "--- Simulação de Eventos ---"

    putStr "Evento 1 (Ativo) - Custo Total: R$ "
    print (custoTotalEvento evento1)

    putStr "Evento 2 (Encerrado) - Custo Total: R$ "
    print (custoTotalEvento evento2)

    putStr "Evento 3 (Cancelado) - Custo Total: R$ "
    print (custoTotalEvento evento3)

    putStrLn "\nBanda de abertura do Evento 1: "
    putStrLn (bandaAbertura evento1)

    putStrLn "Banda de encerramento do Evento 1: "
    putStrLn (bandaEncerramento evento1)
