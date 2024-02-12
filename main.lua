nome = "robert"
roberto = ""

function love.load()
    if nome == 'roberto' then
        roberto = ' É o roberto'
    else
        roberto = ''
    end
end

function love.draw()
    love.graphics.print(nome .. roberto, 400, 300) -- Usar `..` para concatenar strings em Lua
end
