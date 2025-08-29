local numeros = {}
local pares = {}
local quantPares = 0

print("Digite a quantidade de numeros:")
local quantidade = tonumber(io.read())

for i = 1, quantidade do
    numeros[i] = tonumber(io.read())
    if numeros[i] % 2 == 0 then
        table.insert(pares, numeros[i])
        quantPares = quantPares + 1
    end
end

print("Os numeros pares são: " )
for i = 1,  quantPares do
    print(pares[i])
    end
