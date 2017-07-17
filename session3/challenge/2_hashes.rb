# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase(num)
  hash1={}

  #setup an array with odd values up to num
  #or odd_keys=0.upto(num).select{|x| x%2!=0}
  odd_keys=(1..num).select{|x| x%2!=0}

  #setup proc to produce array of even values up to key
  even_proc=Proc.new{|x| x%2==0}

  #invoke .each on the odd array to create the revelant hash
  odd_keys.each { |x|
    hash1[x]=(1..x).select(&even_proc)
  }
  hash1
end
