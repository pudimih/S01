
data Servico = Servico { nome :: String, tipo :: String, precoBase :: Double }
    deriving (Show)

banho = "banho"
massagem = "massagem"
banquete = "banquete"

data StatusAtendimento = EmAndamento | Finalizado | Cancelado
    deriving (Show, Eq)

data Atendimento = Atendimento { servicos :: [Servico], statusAtendimento :: StatusAtendimento }
    deriving (Show)

precoServico :: Servico -> Double
precoServico (Servico _ _ p) = p

calculaSubtotal :: [Servico] -> Double
calculaSubtotal listaServicos = sum (map precoServico listaServicos)

bonusEspiritual :: [Servico] -> Double
bonusEspiritual listaServicos
    | length listaServicos > 3 = subtotal * 1.25
    | subtotal > 500 = subtotal * 0.90
    | otherwise = subtotal
    where
        subtotal = calculaSubtotal listaServicos

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento atendimento
    | statusAtendimento atendimento == Cancelado = 0.0
    | otherwise = bonusEspiritual (servicos atendimento)

descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico atendimento =
    case servicos atendimento of
        []    -> "Nenhum serviço realizado."
        (x:_) -> "Primeiro serviço: " ++ nome x ++ " (" ++ tipo x ++ ")"


servico1 = Servico "banho relaxante" banho 200.0
servico2 = Servico "maassagens com oleos essenciais" massagem 150.0
servico3 = Servico "bolinhos" banquete 180.0

atendimento1 = Atendimento [servico1, servico2, servico3] EmAndamento
atendimento2 = Atendimento [servico1, servico2] Finalizado
atendimento3 = Atendimento [servico2, servico3] Cancelado

main :: IO ()
main = do
    putStrLn "--- Simulação de Atendimentos ---"

    putStr "Atendimento 1 (Ativo) - Valor Final: R$ "
    print (valorFinalAtendimento atendimento1)

    putStr "Atendimento 2 (Finalizado) - Valor Final: R$ "
    print (valorFinalAtendimento atendimento2)

    putStr "Atendimento 3 (Cancelado) - Valor Final: R$ "
    print (valorFinalAtendimento atendimento3)

    putStrLn "\nDescrição do primeiro serviço do Atendimento 1: "
    putStrLn (descricaoPrimeiroServico atendimento1)
