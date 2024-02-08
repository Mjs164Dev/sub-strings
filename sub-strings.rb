# ask user to input a message
puts "Please enter your word:"
chosen_word = gets.chomp # gets.chomp returns a string. That's what we want here.

# define dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(chosen_word, dictionary)
  # define empty results hash
  results = {}
  
  # loop through each word in the dictionary to see if it matches the chosen word.
  dictionary.each do |word|
    if word == chosen_word # if the word matches the chosen word, add it & number of times is appears to hash
      num_times = dictionary.count(chosen_word)
      results[word] = num_times
    end
  end


  puts results
end

substrings(chosen_word, dictionary)