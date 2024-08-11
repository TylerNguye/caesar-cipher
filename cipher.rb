def caesar_cipher(text, shift)
  encoded_text = text.split('').map do |c|
    if c.match?(/[a-zA-Z]/)
      if c >= 'a'
        (((c.ord - 'a'.ord + shift) % 26) + 'a'.ord).chr
      else
        (((c.ord - 'A'.ord + shift) % 26) + 'A'.ord).chr
      end
    else
      c
    end
  end
  puts encoded_text.join('')
end

puts "What is your text?"
text = gets.chomp
shift = ''
loop do
  puts "What is the shift?"
  shift = gets.chomp
  break if shift.match?(/^-?[0-9]+$/)
  puts "Invalid shift"
end
shift = shift.to_i
caesar_cipher(text, shift)