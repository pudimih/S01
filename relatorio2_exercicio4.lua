function calculadora(num1, num2, operacao)
    if operacao == "+" then
        return num1 + num2
    elseif operacao == "-" then
        return num1 - num2
    elseif operacao == "*" then
        return num1 * num2
    elseif operacao == "/" then
        if num2 == 0 then
            return "não é possivel dividir por zero"
        else
            return num1 / num2
        end
    else
        return "Operação inválida"
    end
end

print("Digite o primeiro número:")
local a = tonumber(io.read())
print("Digite o segundo número:")
local b = tonumber(io.read())
print("Digite a operação (+, -, *, /):")
local op = io.read()

local resultado = calculadora(a, b, op)
print("Resultado: " .. resultado)
