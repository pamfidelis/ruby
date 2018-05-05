# The Message

Recentemente um time de desenvolvimento resolveu se comunicar através de mensagem encriptografada. Essas mensagens são encriptadas por uma diferente chave por dia. Entretanto com medo da segurança, decidiram que a senha seria inserida dentro de um conjunto de palavras.

O caminho para encontra-la é que a senha possui um número N de caracteres, essa quantidade é exibida no início da linha, seguido de um espaço e um conjunto de caracteres. Outra dica é: é a palavra que mais aparece nessa mensagem.

Exemplo:

3 onetwothree

Se dividirmos a string teremos:

{one, net, etw, wot, one}

Logo podemos verificar que a senha é *one* pois é a que mais aparece na mensagem.
