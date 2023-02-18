def substrings (string, dictionary)
  matches = Array.new

  #Arranges each word of string into an array and remove special characters if any
  string = string.split(' ').to_a.each {|word| word.downcase.gsub!(/[^0-9A-Za-z]/, '')}
  
  #Search for each word in the string input
  string.each do |word|
  #Search for each word/substring in the dictionary
    dictionary.each do |substring|
  #Check if the word from the string contains the substring from dictionary
      if word.include?(substring)
  #If true, push the substring into an array of matches
        matches.push(substring)
      end
    end
  end

  #Return a hash from the matches array that hold the repetitions as values
  puts matches.tally

end

puts "What would you like to check?"
string = gets

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings(string, dictionary)