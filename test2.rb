n = gets.to_i
ngs = []

3.times do
  ng = gets.to_i
  ngs << ng
end
if ngs.include?(n) == true
  puts 'NO'
else
  100.times do
    if  ngs.include?(n - 3) == false
      n -= 3
    elsif  ngs.include?(n - 2) == false
      n -= 2
    elsif  ngs.include?(n - 1) == false
      n -= 1
    end
  end

  if n <= 0
    puts 'YES'
  else
    puts 'NO'
  end
end
