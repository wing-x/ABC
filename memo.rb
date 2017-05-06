=begin
コメントの書き方について
1.プログラムのステップ毎にコメントを記載する事に関して
本来はステップごとの説明書きは書かない方が良い（プログラムを読めるようになれば自ずと分かるようになる＋説明を書く分二度手間になる）
ただし練習、勉強用として考えるなら書いて置く方がいいかも知れない（というか書かないとコピーしただけなのか理解出来たのか分からんしね）
ちゃんとしたプログラムを書く際にはこの辺は省こう、プロコン提出用とかね
ちなみに自分は書き方を間違えたけど
＃下のプログラムで処理してる内容
プログラム（処理）
で書かないと読み辛いので見かけたら直すように
2.そのメソッドを使用した理由を書いて置く
書き方が複数ある場合に、あえて選んだ理由がある場合に明記しておく
後々処理が楽になるとかその辺
ちょうど.splitをつけるかどうかで揉めてたから、そういう時だね
3.修正したい箇所のメモ
ようはもっと良い書き方があるだろうけど、書き方が分からないからごり押しで書いた時にその旨を記載しておくこと
（eachとかforでループさせれば楽だけど上手く行かなかったから全部putsで置いたとかね）
その時に修正が必要という事でメモしておく
4.やりそうな失敗を明記
例えば上限値はここまでとか、この関数は数字のみ（文字のみ）と言ったことを書いておいて
後々バグらせないようにする
=end
#githubのアドレス
#https://github.com/wing-x/AtB.git
#とりあえずコマンドラインから直接叩いたほうが早い
#もっとも現状だと実質バックアップとしてか使ってないけど
#履歴から過去に戻す方法勉強しないと
=begin
git使う時の流れ
1:git initでリポジトリを作る
2:git add[ファイル名1][ファイル名2]でまずは追加する
 全部追加する場合はは下記のコマンド参照
 git add -A 新規作成/変更/削除されたファイル全てを追加(AllのA)
 add -u 変更/削除されたファイルを追加。新規作成は対象外。(updateのu)
 git add . 新規作成/変更されたファイルを追加。削除は対象外。
3:git commit [-m ＜コミットメッセージ＞]で完了かな
 git commit -aで変更のあったコミット全部追加らしい
 -mを忘れるとエディタが起動するんだけど、問題はこの状態だとコメント入力後にどうすりゃ良いか分からないって事だな
  探してもこの辺が見つからないからどうにかしないとな
4:git statusで追加されたか確認
5:リモートリボジトリが未追加の場合は以下のコマンドを使用
  git remote add origin https://github.com/wing-x/AtB.git
  origin以降はgithubで作ったやつ
6:git push origin masterでとりあえず追加可能
最低限のコマンドはこんな感じかな
=end
=begin
a = gets
#ただ入力を受け取るだけ
puts a

b = gets.to_i
#to_iメソッドは、文字列を10進数の表現と見なして整数に変換します。
#文字列の先頭から10進数と見なせる部分を切り取って変換します。見なせる部分がなければ0を返します。
#分かりやすく言うと整数に変換してくれるメソッド
#入力時に数字以外の文字列が入ってると容赦なく消し飛ばしてくれるおまけつき
puts b

c = gets.to_s
#to_iメソッドの文字列版、文字列に変換してくれる
#注意点としては.to_iは文字列を消し飛ばす効果があったけど、こっちは数字も文字列として扱われるので消し飛ばし効果は無い
puts c
=end

=begin
x,y = gets.split.map(&:to_i)
puts x + y
#多分かなりお世話になるコード
#.splitは空白で分割してくれる良い奴
#.mapは分かり辛いけど、各要素（この場合だとx,y)にブロックとして.to_iを渡す……まあx,yにto_iをくっつけてくれる凄い奴
#x,y = gets.split.map{|v| v.to_i}と同じ意味になるぞい、ブロック付きメソッドでググればなんか分かるかもだ
=end
=begin
li = []
  3.times do |n|
    li[n] = gets.to_i
  end
  puts li
=end
#いわゆる繰り返しのやつ
#多分eachとかwhile文のやつも書けると思う、要勉強
#任意の入力回数にしたい場合は下記

=begin
#配列を表示する時に、改行せずに空白区切りでやりたいとき
ary1 = [10, 17, 8]
puts arys1.join(" ")
#.join使って合体させればok
=end

a = gets.to_i
li = []
  a.times do |n|
    li[n] = gets.to_i
  end
  puts li

=begin
sei1 = "三宅"
mei1 = "洋史"
puts sei1 + mei1

sei2 = gets.to_s
mei2 = gets.to_s

puts sei2 + mei2
puts sei2.chop + mei2.chop
#getsで受けた奴は\n（改行文字）が付いてるから、そのまま結合すると改行されて表示されるので注意
#そういう時は.chopで末尾を消し飛ばせば良い感じにくっ付いてくれる
=end

=begin
2017/5/6
問題の質的問題から011Aから再開
=end