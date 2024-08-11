example_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(*strings, dictionary)
  hash_list = Hash.new(0)
  for arg in strings do
    for string in arg.split
      for substring in dictionary do
        if string.downcase.include?(substring.downcase)
          puts substring
          if hash_list.key?(substring)
            hash_list[substring] += 1
          else
            hash_list[substring] = 1
          end
        end
      end
    end
  end
  hash_list
end

puts substrings("Howdy partner, sit down! How's it going?", example_dictionary)