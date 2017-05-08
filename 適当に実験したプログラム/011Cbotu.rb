n = gets.to_i
ngs = []

3.times do
  ng = gets.to_i
  ngs << ng
end
ngs.sort!
ans = 0

(1..100).each do |i|
  ans = n - 3*i
  if ngs.include?(ans) == true
    ans = n - 3*i + 1
    if ngs.include?(ans) == true
      ans = n - 3*i + 2
      if ngs.include?(ans) == true
        break#ここで処理を止めて、最後のifに直接持っていく
      end
    end
  end
end

if ngs.include?(n) == true
  puts "NO"
 elsif ngs[0] + 2 == ngs[2] && n > 4
  puts "NO"
  elsif ans <= 0
  puts "YES"
  else
  puts "NO"
end

=begin
最初は解法が全く思いつかなかったけど、貪欲法なら書けるかも……（動的探索はまだ書き方が思いつかない、考え方は分かった）
繰り返しを100回やって、N=0を目指す
この時に、基本的にはN-3を使う
で、N-3 = NGならN-2、N - 1を試す
全て駄目ならその時点でNG（3連続×でNGにするため）
N <= 0ならYESを出すって感じ！
良いね、これは分かりやすい
=end

=begin
.
