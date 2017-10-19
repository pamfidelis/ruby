#Broadcast

Em um sistema distribuído as mensagens são enviadas a rede via broadcast, cada componente do sistemas recebe todas as mensagens, porém deve considerar apenas as mensagens endereçadas a ele. É necessário que os comandos sejam executados  na ordem correta *(open, close, lock, unlock)*.

Para simular, uma entradacom uma lista de comandos deve ser lida e os comandos impressos em ordem, o formato de entrada é: *{endereço, comando,sequencial}.*

A primeira é o nome do componente, ou seja, apenas mensagens endereçadas a ele devem ser consideradas. Na segunda linha o número de comandos que serão enviados. E nas demais os comandos listasdos.
