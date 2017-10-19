#abrir arquivo
arquivo = File.open("broadcast.txt", "r")
begin

    # Para quem é a mensagem
    node = arquivo.readline()

    #Quantidade de mensagens
    count_msg = arquivo.readline()[0, 1]

    #Mensagem
    msg = arquivo.readline().split(",")

    saida_msg = []

    while !arquivo.eof?
        #Quem recebe a msg
        receptor = msg[0][1, msg[0].length]

        #Comando da msg
        comando = msg[1]

        #Sequência
        sequencia = msg[2][0, 1].to_i

        if !saida_msg.include?(comando)
            saida_msg[sequencia -1] = comando
        end 

        #Mensagem
        msg = arquivo.readline().split(",")
    end    

    puts saida_msg
end   






