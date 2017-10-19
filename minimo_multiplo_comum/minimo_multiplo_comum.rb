#-- Passo 3 --#
def mdivisor_comum(dados)
    
    aux = 2
    divisores = []

    #O loop irá rodar até todos os números chegaram na quantidade máxima de divisões
    while !todos_um?(dados)

        divisor = false
        divisor_comum = true
        
        #Para cada número irá verificar quais são os divisores existentes
        for i in 0...dados.length
            if dados[i] > 1
                if dados[i] % aux == 0
                    divisor = true
                    dados[i] = dados[i] / aux
                #Caso algum divisor não seja divisivel por um dos números, logo não é divisor comum    
                else
                    divisor_comum = false
                end
            else
                divisor_comum = false
            end
        end
        # Se o divisor(aux) dividiu os 3 números, logo é um divisor comum
        divisores << aux if divisor_comum
        aux += 1 if !divisor
    end

    mdivisor_comum = divisores[0]
    
    #Após encontrar os divisores comuns, é feito o cálculo para encontrar o mdc
    if divisores.length == 1
        return mdivisor_comum
    elsif divisores.length > 1
        for i in 1...divisores.length
            mdivisor_comum *= divisores[i]
        end
        return mdivisor_comum
    end

    return 1
end

#Verifica se todos os números chegaram na quantidade máxima de divisões
def todos_um?(vetor)
    todos = true
    for i in 0...vetor.length
        if vetor[i] != 1
            todos = false
            break
        end
    end
    return todos
end

#-- Passo 2 --#
#Converte os valores de entrada para inteiros
def line_mdivisor_comum(dados)
    dados.map! do |element|
        element = element.to_i
    end
    
    return mdivisor_comum(dados)
end

#-- Passo 1 --#

#Abre o arquivo
arquivo = File.open("numeros.txt", "r")    

#Lê o arquivo e exibe o mdc
while !arquivo.eof?
    line = arquivo.readline.chomp
    dados = line.split
    if dados.length > 1
        puts("#{line}: #{line_mdivisor_comum(dados)}")
    end
end