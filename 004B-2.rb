=begin
#参考元：#1035650
a = Array.new
a[0] = gets.chomp
a[1] = gets.chomp
a[2] = gets.chomp
a[3] = gets.chomp
b = a.reverse
puts b
#ここのリバースだけだとreverse上下が入れ替わるだけ
#よってさらに↓のコードで各配列の事に順番を入れ替える
for c in b do
  puts c.reverse
end
=end

=begin
#参考元：Submission #1023892
li = []
  4.times do |n|
    li[n] = gets.chomp.split
  end

li.reverse_each do |n|
  puts sprintf("%s %s %s %s",n[3],n[2],n[1],n[0])
end
=end

=begin
#参考元：Submission #1023892
a = []
2.times do |n|
  a[n] = gets.chomp
end
#gets.chompだと問題なし
#何故か gets.chomp.splitだと挙動が変わる
#ちょっと調べよう
#どうやらsplitをつけると各行で改行されちゃうな

b = a.reverse
puts b

for c in b do
  puts c.reverse
end
=end
=begin
#2chで確認してやっと解決
a = []
2.times do |n|
  a[n] = gets.chomp
end

p a
puts a
# 1 2 3
# 4 5 6
# =>["1 2 3", "4 5 6"]
=end
=begin
b = []
2.times do |n|
  b[n] = gets.chomp.split
end

p b
puts b
# 1 2 3
# 4 5 6
# =>[["1", "2", "3"], ["4", "5", "6"]]
p b.flatten(-2)
puts b.flatten(-2)
=end

#こういう感じになってたんだね
#配列で行列を表してるっていう意味では後者の方が正しい
#でもそれをputsで渡しちゃうと想像と違った形になるんだね、たのしー！
#引数が配列のときは、配列の要素をそれぞれ文字列にして、改行を加えて出力します。

#puts [1, [2, 3]]
#1
#2
#3
#.flattenで配列の平坦化が可能らしい
#でも中身のカッコが全部外れるなあ
#どうしたものだか
#あ、以下2chの引用
=begin
669 返信：デフォルトの名無しさん[sage] 投稿日：2017/02/20(月) 00:39:20.78 ID:ql4Ji/cb
文章表示のためにp使うな氏ね、という素晴らしい言葉があるのだが
内容確認のためにputs使うな氏ね、というのも同じなのだろうな

>>666
Rubyには文字列や数値なんかを含むオブジェクトの中身を適度にデバッグ便利に表示してくれる p という関数的メソッドがございます
ある時点の文字列や配列なんかがどのような構造になってるかというのは p で表示させることで確認できます
原始的な方法だとか文句はあるんだけども思った通りの構造になっていないことが判明したりするので適宜表示してくだされ

a = []
2.times do |n|
a[n] = gets.chomp.split(" ")
end
p a

んでつまりaは入れ子の配列です
通常、そんなめんどくさいものをputsに直接渡してはいけません（特に初心者は）
配列の要素をeachで取り出す・mapで結合するなどして成形した文字列ひとつを（何度も）putsするようにしてみてください
顧客が本当に必要だったもの：

a = []
2.times{ a << STDIN.gets.split}
puts a.flatten.join(' ')
#でもこれでも上手く行ってないんだよな
#まあ慌てて書いたんだろう、レス異常に早かったし
#とりあえずeachかmapでやる方法を探してみよう
=end
#取り出し方模索中
b = []
2.times do |n|
  b[n] = gets.chomp.split
end
#p b.flatten
#puts b[0][0] +" "+b[0][1] + " " + b[0][2]
#puts b[1][0] +" "+b[1][1] + " " + b[1][2]
#とりあえずはごり押しの方法
#これをeachかforメソッドを使って繰り返せれば……
b.each do |c|
  p c.join(' ')
  puts c.join(' ')
end
#やったぜ、流石2chの専門板住人、何だかんだ答えてくれるのが良い
#以下は色々試した時の産物
#b.each do |x,y,z|
#  puts x,y,z
#end

#for i,j in b do
#  p [i,j]
#end
=begin
679 返信：デフォルトの名無しさん[] 投稿日：2017/02/20(月) 17:04:29.58 ID:36hbH0MI
>>668
$ irb
>> ys = [["1", "2", "3"], ["4", "5", "6"]]
=> [["1", "2", "3"], ["4", "5", "6"]]
>> ys.reverse.each { |xs| puts xs.join(' ') }
4 5 6
1 2 3
=> [["4", "5", "6"], ["1", "2", "3"]]
>>
=end
