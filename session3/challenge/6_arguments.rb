# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(opposites_attract, *elements)
  to_return = []
  elements.each_slice 2 do |first, last|
    first  = !!first
    last   = !!last
    result = if opposites_attract
               first != last
             else
               first == last
             end
    to_return << result
  end
  to_return
end

=begin

identifier=true
bool_array=[true, false]
bool_array.slice(0..bool_array.length-2)
bool_array.length
bool_array[0]
bool_array[bool_array.length-1]
match_maker(identifier, [true, true, false])
match_maker(true, true, false)

match_maker(true, bool_array.slice(0..bool_array.length-2))
bool_array[bool_array.length-1]
bool_array[0]
match_maker true,  true,  true, 0, nil

def match_maker(identifier, n=0, *bool_array)
  arr=[]
  if identifier==true
    if bool_array[0]!=bool_array[1]
      arr << true
    else
      arr<<false
    end
    loop{
    break if n>=bool_array.length-2
    n+=2
    if bool_array[n]!=bool_array[n+1]
      arr << true
    else
      arr<<false
    end
    }
  else
    if bool_array[0]==bool_array[1]
      arr << true
    else
      arr<<false
    end
    loop{
    break if n>=bool_array.length-2
    n+=2
    if bool_array[n]==bool_array[n+1]
      arr << true
    else
      arr<<false
    end
    }
  end
  arr
end

match_maker true,  true,  true, 0, nil


  arr << true if bool_array[2]!=bool_array[3] else arr<<false
  arr << true if bool_array[4]!=bool_array[5] else arr<<false



  arr << true if bool_array[0]==bool_array[1] && identifier==false && bool_array.length==2

  arr << true if bool_array[0]!=bool_array[1] && identifier==true && bool_array.length==4
  arr << true if bool_array[0]==bool_array[1] && identifier==false && bool_array.length==4

  arr << true if bool_array[bool_array.length-2]!=bool_array[bool_array.length-1]&& identifier==true && bool_array.length==4
  arr << true if bool_array[bool_array.length-2]==bool_array[bool_array.length-1]&& identifier==false && bool_array.length==4

  else
  arr << false
  end

arr

end



return true if match_maker(bool_array.slice(0..1))!=bool_array[2] if bool_array.length==3
return true if match_maker(bool_array.slice(0..2))!=bool_array[3] if bool_array.length==4



if bool_array.length>2

arr << true if match_maker(identifier, bool_array.slice(0..bool_array.length-2))!=bool_array[bool_array.length-1] && identifier==true || match_maker(identifier, bool_array.slice(0..bool_array.length-2))==bool_array[bool_array.length-1] && identifier==false
else
arr << false
end



  arr << true if match_maker(identifier,bool_array.slice(0..bool_array.length-2))!=bool_array[bool_array.length-1] && identifier==true || match_maker(identifier, bool_array.slice(0..bool_array.length-2))==bool_array[bool_array.length-1] && identifier==false
  else
  arr << false
  end
=end
