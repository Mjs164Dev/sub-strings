# ask user to input a message
puts "Please enter your word:"
chosen_word = gets.chomp # gets.chomp returns a string. That's what we want here.
chosen_word_array = chosen_word.split(" ")
puts "#{chosen_word_array}"

# define dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(chosen_word_array, dictionary)
  # define empty results hash
  results = {}
  
  # loop through each word in the dictionary to see if it matches the chosen word.
  dictionary.each do |word|
    chosen_word_array.each do |chosen_word_var|
      if word == chosen_word_var # if the word matches the chosen word, add it & number of times is appears to hash
        num_times = dictionary.count(chosen_word_var)
        results[word] = num_times
      end
    end
  end
  puts results
end

substrings(chosen_word_array, dictionary)