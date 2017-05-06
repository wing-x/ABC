a = []
2.times do |n|
  a[n] = gets.chomp
end

p a
b = a.reverse
puts b
p b

for c in b do
  puts c.reverse
end
