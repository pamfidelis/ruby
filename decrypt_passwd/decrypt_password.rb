def found (keys_words)
  qtd = keys_words.values.minmax
  word = keys_words.key(qtd.last)
  puts "Senha: #{word}\n"
end

def search_password(qtd_letters, passwd_encrypt)
  qtd_characters = qtd_letters - 1
  #puts "Quatidade de letras #{qtd_characters + 1}\n"

  code = passwd_encrypt
  #puts "Senha encriptada #{passwd_encrypt}\n"

  size_passwd = passwd_encrypt.size - qtd_characters - 1
  #puts "Tamanho da senha #{size_passwd}\n"

  word = code[0..qtd_characters]
  words_found = {}

  for i in 1 .. size_passwd do
    qt = code.scan(/#{word}/).length

    if qt > 1
      words_found[word] = qt
      #puts "Foi encontrada #{qt}x a palavra #{word}"
    end

    qtd_characters += 1
    word = code[i..qtd_characters]
  end

  found(words_found)
end

arquivo = File.open("passwords.txt", 'r')

until arquivo.eof?
  line = arquivo.readline.chomp

  qtd_letters = line.split(/\s/)[0].to_i
  passwd_encrypt = line.split(/\s/)[1].to_s

  search_password(qtd_letters, passwd_encrypt) unless qtd_letters.nil? || passwd_encrypt.empty?
end