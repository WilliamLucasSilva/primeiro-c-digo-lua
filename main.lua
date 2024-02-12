Pessoa = {
    nome = '',
    idade = '',
    Detalhes = function(self)
       love.graphics.print('Nome: ' .. self.nome .. ', ' .. 'Idade: ' .. self.idade, 400, 300)
    end
}

function Pessoa:nova(nome, idade)
    novaPessoa = {}
    setmetatable(novaPessoa, self)
    self.__index = self
    novaPessoa.nome = nome
    novaPessoa.idade = idade
    return novaPessoa
end

function love.load()
    roberto = Pessoa:nova('roberto', 18)
end

function love.draw()
    roberto:Detalhes()
end

