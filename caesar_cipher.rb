def caesar_cipher(string, shift)
  result = ""

  string.chars.each do |char|
    if char.match?(/[a-z]/)
      base = 'a'.ord
      shifted = ((char.ord - base + shift) % 26) + base
      result << shifted.chr
    elsif char.match?(/[A-Z]/)
      base = 'A'.ord
      shifted = ((char.ord - base + shift) % 26) + base
      result << shifted.chr
    else
      result << char
    end
  end

  result
end

# To test, uncomment the following line of code:
# puts caesar_cipher("What am I doing?", 5)