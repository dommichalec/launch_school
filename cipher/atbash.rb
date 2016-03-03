# Atbash Cipher class
class Atbash
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'.freeze

  def self.encode(str)
    new(str).encode
  end

  def initialize(str)
    @text = str
  end

  def encode
    every_five(reverse_letters)
  end

  private

  def every_five(letters)
    letters.scan(/.{1,5}/).join(' ')
  end

  def reverse_letters
    tranform_text.collect { |char| reverse_letter(char) }.join
  end

  def reverse_letter(char)
    unless letter?(char)
      index = ALPHABET.index(char)
      ALPHABET.reverse[index]
    else
      return char
    end
  end

  def letter?(char)
    char != char.to_i.to_s
  end

  def tranform_text
    @text.downcase.scan(/\w/)
  end
end
