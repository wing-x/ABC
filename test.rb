# n = gets.to_i
# ngs = []
#
# 3.times do
#   ng = gets.to_i
#   ngs << ng
# end

# 100回引くまでに0にできるかで判定する方針は同じ
n = 300
ngs = [57, 121, 244]
ngs.sort!
ary =[]
100.times do
  case
  when  ngs.include?(n-3) == false
    n -= 3
    #ary << n #デバッグ用
  when  ngs.include?(n-2) == false
    n -= 2
    #ary << n #デバッグ用
  when  ngs.include?(n-1) == false
    n -= 1
    #ary << n #デバッグ用
  end
end
if ngs.include?(n) == true
  puts "NO"
  elsif ans <= 0
  puts "YES"
  else
  puts "NO"
end

#case文って比較したいオブジェクト名書かなくても動くんかーい！
