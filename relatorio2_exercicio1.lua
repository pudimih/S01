local multiplos = {}
local quant = 0

local m = tonumber(io.read())
local n = tonumber(io.read())
local x = tonumber(io.read())

for i = m, n do
    if i % x == 0 then
        table.insert(multiplos, i)
        quant = quant + 1
    end
end

print("Os numeros multiplos de " .. x .. " no intervalo de " .. m .. " a " .. n .. " sao:") 
for i = 1,  quant do
    print(multiplos[i])
    end
