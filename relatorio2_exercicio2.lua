local numeros = {}
local maior = -1000

print("Digite a quantidade de numeros:")
local quantidade = tonumber(io.read())

for i = 1, quantidade do
    numeros[i] = tonumber(io.read())
    if numeros[i] > maior then
        maior = numeros[i]
    end
end

print("O maior número é: " .. maior)
