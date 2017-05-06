#001B
m =gets.to_i

if m < 100
  puts "00"
elsif 100 <= m && m <= 5000
  puts sprintf("%02d",m/100)
elsif 6000 <= m && m <= 30000
  puts m/1000 + 50
elsif 35000 <= m && m <= 70000
  puts (m/1000 - 30)/5 + 80
elsif 70000 < m
  puts 89
end
