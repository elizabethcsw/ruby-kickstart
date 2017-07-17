# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor 'bottles'
  def initialize(bottles)
    @bottles = bottles
  end

  def set_range
  n=@bottles
    if n<0
      int=0
    elsif n>99
      int=99
    else
      int=n
    end
  end

  def in_words(int)
  numbers_to_name = {
      90 => "Ninety",
      80 => "Eighty",
      70 => "Seventy",
      60 => "Sixty",
      50 => "Fifty",
      40 => "Forty",
      30 => "Thirty",
      20 => "Twenty",
      19=>"Nineteen",
      18=>"Eighteen",
      17=>"Seventeen",
      16=>"Sixteen",
      15=>"Fifteen",
      14=>"Fourteen",
      13=>"Thirteen",
      12=>"Twelve",
      11 => "Eleven",
      10 => "Ten",
      9 => "Nine",
      8 => "Eight",
      7 => "Seven",
      6 => "Six",
      5 => "Five",
      4 => "Four",
      3 => "Three",
      2 => "Two",
      1 => "One"
    }
  str = ""
  numbers_to_name.each { |num, name|
    if int == 0
      return str="Zero"
    elsif int.to_s.length == 1 && int/num > 0
      return str="#{name}"
    elsif int < 100 && int/num > 0
      return str="#{name}" if int%num == 0
      return str="#{name}-" + in_words(int%num).downcase
    end
  }
  end

def one_bottle
  puts "One bottle of beer on the wall,"
  puts "One bottle of beer,"
  puts "Take one down, pass it around,"
  puts "Zero bottles of beer on the wall."
end

def two_bottle
  puts "Two bottles of beer on the wall,"
  puts "Two bottles of beer,"
  puts "Take one down, pass it around,"
  puts "One bottle of beer on the wall."
end

def print_song
  if self.bottles>2
    self.set_range.downto(3).each{|i|
      puts "#{in_words(i)} bottles of beer on the wall,"
      puts "#{in_words(i)} bottles of beer,"
      puts "Take one down, pass it around,"
      puts "#{in_words(i-1)} bottles of beer on the wall."
    }
    two_bottle
    one_bottle
  elsif self.bottles==2
    two_bottle
    one_bottle
  elsif self.bottles==1
    one_bottle
  else self.bottles==0
    ""
  end
end

end

song1=BeerSong.new 2
song1.print_song
