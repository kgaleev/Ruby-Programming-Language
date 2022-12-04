alias empty_line puts
###############################################################
empty_line
print "giraffe with new line"
print "\n" # \n for new line, so these two rows work same as puts
empty_line
###############################################################
character_name = "John"
character_age = "35"
puts ("There was a #{character_age} years old man named " + character_name) # variables in quotes and out
character_name = "Tom"
puts ("He lived his life being called ") + character_name # overwriting variable character_name
empty_line
###############################################################
puts "giraffe\" academy" # \" leaves " as part of text
empty_line
###############################################################
puts "giraffe".index("r") # position of "r" in string
empty_line
###############################################################
puts "enter name"
name = gets.chomp() # doesn't matter if with () or without if no argument given
#if new line needed after gets, then no .chomp
puts "hi, " + name + ", how are you?"
empty_line
###############################################################
friends = Array["Kevin", "Oscar"] # same as just friends = ["Kevin", "Oscar"]
puts friends[0, 2] # range from 0 to 2, not including 2
empty_line
###############################################################
str = "Hello there"
str.downcase!
puts str[6] # can adress to string like it's array -- output: t
empty_line
###############################################################
states = {
  "New York" => "NY",
  1 => "OR",
  :Pennsylvania => "PE"
} # keys can be of many types in one hash

puts states[1], states[:Pennsylvania] # give key, get value
empty_line

states.each do |key, value|
  unless key=="New York"
    puts states[key]
  end
end # get some (not all) values from hash; same output as in previous puts
empty_line
###############################################################
puts "command: hash_difference = { \"a\":1, \"b\" => 2 }"
hash_difference = { "a":1, "b" => 2 } # "a" becomes symbol :a
puts "hash_difference = " + hash_difference.to_s #integer should be converted to string
puts (":a => #{hash_difference[:a]}")
empty_line
###############################################################
def sayhi
  puts "hi"
end

sayhi # call method without wrapping in variable
empty_line
###############################################################
def sayhi1(name="Billy", age=30)
  puts (name + ", you are " + age.to_s) #integer should be converted to string
end

sayhi1
sayhi1("Jim", "40") # change method arguments without wrapping in variable
empty_line
###############################################################
def multi(a, b)
  return a*b # can be return a*b, 70 -- then it will be array we can get value from multi(2,3)[1]
  puts "5" # return brakes method, only a*b is executed
  # can get multiple return -- return a*a, b*b -- result in array
end

puts multi(2,3) # get 6; puts "5" not displayed
empty_line
###############################################################
temp = "7"; temp += "2"; puts temp # it's temp = temp + "2" -- so 72
empty_line
###############################################################
def sum(a, b=8) # 8 is the default value of {b}, if {b} isn't entered when calling method
  puts a+b
end
sum(3)
empty_line
###############################################################