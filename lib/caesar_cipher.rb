# frozen_string_literal: true

def caesar_cipher(string, number)
  result = ''

  string.each_char do |letter|
    op = letter.ord < 91 ? 65 : 97
    if letter.ord.between?(65, 90) || letter.ord.between?(97, 122)
      trasnform = (((letter.ord - op) + number) % 26) + op
      result += trasnform.chr
    else
      result += letter
    end
  end
  result
end
