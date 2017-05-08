a,b = gets.chop.split(" ").map(&:to_i)
ans = []
ans.push(a,b)
puts ans.reverse.join(" ")
