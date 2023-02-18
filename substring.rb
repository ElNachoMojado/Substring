def substrings (string, dictionary)
  matches = Array.new

  #Arranges each word of string into an array and remove special characters if any
  string = string.split(' ').to_a.each {|word| word.downcase.gsub!(/[^0-9A-Za-z]/, '')}
  
  string.each do |word|
    dictionary.each do |substring|
      if word.include?(substring)
        matches.push(substring)
      end
    end
  end

  puts matches.tally

end

puts "What would you like to check?"
string = gets

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings(string, dictionary)