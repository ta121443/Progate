#################### 2-1 配列とは ####################

# 変数languagesに、複数の文字列を要素に持つ配列を代入してください
languages = ["日本語", "英語", "スペイン語"]

# 変数languagesを出力してください
puts languages


#################### 2-2 配列を使ってみよう ####################

languages = ["日本語", "英語", "スペイン語"]

# インデックス番号が1の要素を出力してください
puts languages[1]

# インデックス番号が0の要素を使って「◯◯を話せます」となるように出力してください
puts "#{languages[0]}を話せます"


#################### 2-3 each文 ####################

languages = ["日本語", "英語", "スペイン語"]

# each文を用いて、要素ごとに「○○を話せます」と出力してください
languages.each do | language |
  puts "#{language}を話せます"
end


#################### 2-4 変数の使える範囲 ####################

languages = ["日本語", "英語", "スペイン語"]
border = "---------------------"

languages.each do |language|
  # 変数borderを出力してください
  puts border
  puts "#{language}を話せます"
end

# 以下のコードを削除してください
# puts language


#################### 2-5　ハッシュとは ####################

# 変数examにハッシュを代入してください
exam = {"subject" => "Math", "score" => 80}

# 変数examを出力してください
puts exam


#################### 2-6　ハッシュを使ってみよう ####################

exam = {"subject" => "Math", "score" => 80}

# キー「"subject"」の値を出力してください
puts exam["subject"]

# キー「"subject"」の値を「"Science"」に更新してください
exam["subject"] = "Science"

# もう一度、キー「"subject"」の値を出力してください
puts exam["subject"]

# キーが「"grade"」、値が「"good"」の要素を追加してください
exam["grade"] = "good"

# キー「"grade"」の値を出力してください
puts exam["grade"]



#################### 2-7　シンボルとは ####################

# キーをシンボルで書き換えてください
exam = {:subject => "Math", :score => 80}

# キー「:score」の値を出力してください
puts exam[:score]


#################### 2-8　ハッシュのキーの書き方 ####################

# 省略した書き方で書き換えてください
exam = {subject: "Math", score: 80}

puts "#{exam[:subject]}: #{exam[:score]}点"


#################### 2-9　nilとは ####################

exam = {subject: "Math", score: 80}

# キー「:grade」の値を出力してください
puts exam[:grade]

# nilを出力してください
puts nil


#################### 2-10　if nil ####################

exam = {subject: "Math"}

# 条件式にキー「:score」の値を使うif文をつくってください
if exam[:score]
  puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
else
  puts "#{exam[:subject]}の結果は分かりません"
end


#################### 2-11　要素がハッシュである配列(1) ####################

# 要素がハッシュの配列を作成してください
exams = [
  {subject: "Math", score: 80},
  {subject: "Science", score: 55}
]

# インデックス番号が1の要素の値を出力してください
puts exams[1]


#################### 2-12　要素がハッシュである配列(2) ####################

exams = [
  {subject: "Math", score: 80},
  {subject: "Science", score: 55}
]

# インデックス番号が1の要素の、キーが「:score」の値を出力してください
puts exams[1][:score]


#################### 2-13　要素がハッシュである配列(3) ####################

exams = [
  {subject: "Math", score: 80},
  {subject: "Science", score: 55}
]

# each文を用いて、要素ごとに「○○の結果は△△点です」と出力してください
exams.each do |exam|
  puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
end


#################### 2-14　総合課題(1) ####################

characters = [
  {name: "にんじゃわんこ", age: 14},
  {name: "ひつじ仙人"},
  {name: "ベイビーわんこ", age: 5},
  {name: "とりずきん"}
]

# each文でそれぞれのキャラクターの名前を表示してください
characters.each do |character|
  puts "---------------------"
  puts "名前は#{character[:name]}です"
end


#################### 2-15　総合課題(2) ####################

characters = [
  {name: "にんじゃわんこ", age: 14},
  {name: "ひつじ仙人"},
  {name: "ベイビーわんこ", age: 5},
  {name: "とりずきん"}
]

characters.each do |character|
  puts "--------------------"
  puts "名前は#{character[:name]}です"
  
  # キー:ageの値に応じて年齢の情報を出力してください
  if character[:age]
    puts "年齢は#{character[:age]}歳です"
  else
    puts "年齢は秘密です"
  end
end
