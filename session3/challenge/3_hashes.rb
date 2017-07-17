# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(string)
  hash1=Hash.new(0)

  downcase_array=string.downcase.split(" ")
  #no need to add .uniq at the end since I want to count it as values, while the keys will have to be uniq so no need to both stripping the array to prepare for uniq keys
  
  downcase_array.each{|x|
    hash1[x]+=1}
  hash1
end
