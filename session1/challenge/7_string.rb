# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


def pirates_say_arrrrrrrrr(string)
to_return=""
  rule = false
  string.size.times { |x|
    to_return << string[x] if rule
    rule = (string[x] == "r" || string[x] == "R")
  }
  to_return
end
