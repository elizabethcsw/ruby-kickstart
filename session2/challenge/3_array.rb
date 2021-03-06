# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    answer=""
    self.each_char.with_index { |char, index|
      answer << char if index.even?
    }
    answer
  end
end

puts "abcdefg".every_other_char
