def caesar_cipher(text, shift)
  encrypted_text = ""

  text.each_char do |char|
    if char.match(/[a-zA-Z]/)
      base = char.match(/[a-z]/) ? 'a' : 'A'
      shifted_char = ((char.ord - base.ord + shift) % 26 + base.ord).chr
      encrypted_text << shifted_char
    else
      encrypted_text << char
    end
  end

  encrypted_text 
end

# Test code
original_text = "What a Ruby!"
shift_factor = 10
encrypted_text = caesar_cipher(original_text, shift_factor)

puts "#{encrypted_text}" 
