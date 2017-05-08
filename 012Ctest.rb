n = 0
ans = []
(1..9).each do |i|
  (1..9).each do |j|
    n = i * j
    ans << n
  end
end
p ans
p ans.inject{|sum,a| sum + a}
