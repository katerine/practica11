require "REEcleon"

include REEcleon::Expregular

puts " "
puts "EJEMPLOS"

c = char('a')
puts "a = char('a') ---> a['a'] = #{a['a']}"
puts "a = char('a') ---> a['b'] = #{a['b']}"

d = star(char('a'))
puts "b = star(char('a')) ---> b['aaac'] = #{b['aaac']}"

x = star(alt(char('a'), char('c')))
puts "x = star(alt(char('a'), char('c'))) = (a|c)* ---> x['aaac'] = #{x['aaac']}"


puts " "
