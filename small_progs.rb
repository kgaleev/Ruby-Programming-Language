# counting letter occurrences in string
text = "I am learning Ruby and it is fun!"
text.downcase! # so I and i will be counted as same letter
freqs = {}
freqs.default = 0
text.each_char { |char| freqs[char] += 1} # .each_char passes each character in str to the given block, or returns an enumerator if no block is given
("a".."z").each {|x| puts "#{x} : #{freqs[x]}" }# frozen_string_literal: true
puts
###############################################################
# counting factorial by making cycle within method
def fact(n)
  if n<= 1
    1
  else
    n * fact( n - 1 )
  end
end
puts "factorial = #{fact(6)}"
puts
###############################################################
# existing method can be used inside {initialize}
class Test
  def initialize x
    self.calc x
  end
  def calc y
    puts y*4
  end
end
puts "#{t = Test.new 2}"
puts
###############################################################
greet = Proc.new do |x|
  puts "Welcome #{x}"
end

goodbye = Proc.new do |x|
  puts "Goodbye #{x}"
end

def say(arr, proc)
  arr.each { |x| proc.call x}
end

people = ["David", "Amy", "John"]
say(people, greet)
say(people, goodbye)
puts
###############################################################