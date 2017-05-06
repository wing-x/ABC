#003B
#全然分からんけど、とりあえず最低限度は書こう
#Submission #1035486がめっちゃ分かりやすかったのでこれを参考にするぺっさ
=begin
s = gets.chomp
t = gets.chomp
a = 'atcoder'
lose = false
#loseのフラグをfalesの状態にしておく
s.length.times do |i|
  if s[i] == '@' || t[i] == '@'
     if !(s[i] == t[i] || a.include?(s[i]) || a.include?(t[i]))
       lose = true
     end
   elsif s[i] != t[i]
     lose = true
  end
end
#lengthは文字列の長さを見るやつ
#最初のifはsとiの配列にそれぞれ@があるかどうか見る
#さらにｓとｔについて一致(or)s[i]にaがinclude(含まれてるか)(or)t[i]にaがinclude(含まれてるか)という条件式を立てておき
#この状態で!を全部にかける、これはnotの意味合いになる
#ようはこの条件に当てはまってなかったら負けフラグをtrueにするというコードになる
#あとは@が無い時の分岐として一致してるかどうかで負けフラグのオンにする

if lose
  puts "you will lose"
  else
  puts "you can win"
end
#あとはloseがture状態ならloseが出力されfalseなら出力されないという感じ
=end

#これらを踏まえた上で、winの状態で書き換えよう
s = gets.chomp
t = gets.chomp
a = 'atcoder'
win = true
s.length.times do |i|
  if s[i] == '@' || t[i] == '@'
     if !(s[i] == t[i] || a.include?(s[i]) || a.include?(t[i]))
       win = false
     end
   elsif s[i] != t[i]
     win = false
  end
end

if win
  puts "You can win"
  else
  puts "You will lose"
end
