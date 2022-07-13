################################　クラスの継承　################################

#################### 5-1　目標物を確認しよう ####################

# 特になし!

#################### 5-2　継承とは ####################

# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
class Menu
    attr_accessor :name
    attr_accessor :price
  
    def initialize(name:, price:)
        self.name = name
        self.price = price
    end
    
    def info
       return "#{self.name} #{self.price}円"
    end
    
    def get_total_price(count)
        total_price = self.price * count
        if count >= 3
            total_price -= 100
        end
        return total_price
    end
end

# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
# requireを使ってmenu.rbを読み込んでください
require './menu'

# Menuクラスを継承したFoodクラスをつくってください
class Food < Menu
end

# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
# requireを使ってmenu.rbを読み込んでください
require './menu'

# Menuクラスを継承したDrinkクラスをつくってください
class Drink < Menu
end


#################### 5-3　継承の仕組み ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
# requireを使ってfood.rbとdrink.rbを読み込んでください
require './food'
require './drink'

# Foodクラスのインスタンスを生成して変数food1に代入してください
food1 = Food.new(name: "ピザ", price: 800)

# food1に対してinfoメソッドを呼び出して戻り値を出力してください
puts food1.info

# Drinkクラスのインスタンスを生成して変数drink1に代入してください
drink1 = Drink.new(name: "コーラ", price: 300)

# drink1に対してinfoメソッドを呼び出して戻り値を出力してください
puts drink1.info


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
class Menu
    attr_accessor :name
    attr_accessor :price
  
    def initialize(name:, price:)
        self.name = name
        self.price = price
    end
    
    def info
       return "#{self.name} #{self.price}円"
    end
    
    def get_total_price(count)
        total_price = self.price * count
        if count >= 3
            total_price -= 100
        end
        return total_price
    end
end

# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
require './menu'

class Food < Menu
end

# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
require './menu'

class Drink < Menu
end


#################### 5-4　インスタンス変数の追加 ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
require "./food"
require "./drink"

food1 = Food.new(name: "ピザ", price: 800)
drink1 = Drink.new(name: "コーラ", price: 300)

# food1.calorieに「700」を代入してください
food1.calorie = 700

# food1.calorieを出力してください
puts food1.calorie

# drink1.amountに「500」を代入してください
drink1.amount = 500

# drink1.amountを出力してください
puts drink1.amount


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
# 同上

# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
require "./menu"

class Food < Menu
  # calorieというインスタンス変数を追加してください
  attr_accessor :calorie
end


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
require "./menu"

class Drink < Menu
  # amountというインスタンス変数を追加してください
  attr_accessor :amount
end



#################### 5-5　インスタンスメソッドの追加 ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
require "./food"
require "./drink"

food1 = Food.new(name: "ピザ", price: 800)
food1.calorie = 700

# food1に対してcalorie_infoメソッドを呼び出して戻り値を出力してください
puts food1.calorie_info


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
require "./menu"

class Food < Menu
  attr_accessor :calorie
  
  # calorie_infoメソッドを定義してください
  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
# 同上



#################### 5-6　料理注文システムの復習 ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
# food.rbとdrink.rbを読み込むように書き換えてください
# require "./menu"
require "./food"
require "./drink"

# food1とfood2をFoodクラスのインスタンスに書き換えてください
food1 = Food.new(name: "ピザ", price: 800)
food2 = Food.new(name: "すし", price: 1000)
# drink1とdrink2をDrinkクラスのインスタンスに書き換えてください
drink1 = Drink.new(name: "コーラ", price: 300)
drink2 = Drink.new(name: "お茶", price: 200)

menus = [food1, food2, drink1, drink2]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"
order = gets.chomp.to_i

selected_menu = menus[order]
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"
count = gets.chomp.to_i

puts "お会計は#{selected_menu.get_total_price(count)}円です"


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
# 同上



#################### 5-7　オーバーライド(1) ####################


# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
require "./menu"

class Food < Menu
  attr_accessor :calorie
  
  # infoメソッドを定義してください
  def info
    return "#{self.name} #{self.price}円（#{self.calorie}kcal）"
  end
  
  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
require "./menu"

class Drink < Menu
  attr_accessor :amount
  
  # infoメソッドを定義してください
  def info
    return "#{self.name} #{self.price}円（#{self.amount}mL）"
  end
end



#################### 5-8　オーバーライド(2) ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
require "./food"
require "./drink"

# Food.newの引数を書き換えてください
food1 = Food.new(name: "ピザ", price: 800, calorie: 700)
# food1.calorie = 700
food2 = Food.new(name: "すし", price: 1000, calorie: 600)
# food2.calorie = 600

drink1 = Drink.new(name: "コーラ", price: 300)
drink1.amount = 500
drink2 = Drink.new(name: "お茶", price: 200)
drink2.amount = 400

menus = [food1, food2, drink1, drink2]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"
order = gets.chomp.to_i

selected_menu = menus[order]
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"
count = gets.chomp.to_i

puts "お会計は#{selected_menu.get_total_price(count)}円です"


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
require "./menu"

class Food < Menu
  attr_accessor :calorie
  
  # initializeメソッドを定義してください
  def initialize(name:, price:, calorie:)
    self.name = name
    self.price = price
    self.calorie = calorie
  end
  
  def info
    return "#{self.name} #{self.price}円 (#{self.calorie}kcal)"
  end
  
  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
# 同上



#################### 5-9 super　 ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
require "./menu"

class Food < Menu
  attr_accessor :calorie
  
  def initialize(name:, price:, calorie:)
    # superを使って書き換えてください
    super(name: name, price: price)
    self.calorie = calorie
  end
  
  def info
    return "#{self.name} #{self.price}円 (#{self.calorie}kcal)"
  end
  
  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
# 同上



#################### 5-10　オーバーライドの復習 ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
require "./food"
require "./drink"

food1 = Food.new(name: "ピザ", price: 800, calorie: 700)
food2 = Food.new(name: "すし", price: 1000, calorie: 600)

# Drink.newの引数を書き換えてください
drink1 = Drink.new(name: "コーラ", price: 300, amount: 500)
# drink1.amount = 500
drink2 = Drink.new(name: "お茶", price: 200, amount: 400)
# drink2.amount = 400

menus = [food1, food2, drink1, drink2]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"
order = gets.chomp.to_i

selected_menu = menus[order]
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"
count = gets.chomp.to_i

puts "お会計は#{selected_menu.get_total_price(count)}円です"


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
require "./menu"

class Drink < Menu
  attr_accessor :amount
  
  # initializeメソッドを定義してください
  def initialize(name:, price:, amount:)
    super(name: name, price: price)
    self.amount = amount
  end
  def info
    return "#{self.name} #{self.price}円 (#{self.amount}mL)"
  end
end



#################### 5-11　Dateクラスの使い方 ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
# requireを用いて、Dateクラスを読み込んでください
require "date"

# 変数birthdayに、Dateクラスのインスタンスを代入してください
birthday = Date.new(1999, 4, 20)

# 変数birthdayをputsしてください
puts birthday

# 変数birthdayにsunday?メソッドを用いた結果をputsしてください
puts birthday.sunday?



#################### 5-12　Dateクラスの使い方(2) ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
require "date"

# 変数todayに、Date.todayの戻り値を代入してください
today = Date.today

# 変数todayをputsしてください
puts today

# 変数todayに対してsunday?メソッドを用いた結果をputsしてください
puts today.sunday?



#################### 5-13　クラスメソッドの定義 ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  
  def info
    return "#{self.name} #{self.price}円"
  end
  
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end
    return total_price
  end
  
  # クラスメソッド「is_discount_day?」を定義してください
  def Menu.is_discount_day?
  end
  
end


# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
# 同上



#################### 5-14　クラスメソッドの処理 ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
# requireを用いて、Dateクラスを読み込んでください
require "date"

class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  
  def info
    return "#{self.name} #{self.price}円"
  end
  
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end
    return total_price
  end
  
  def Menu.is_discount_day?
    # 日曜日であればtrue、そうでなければfalseを返してください
    today = Date.today
    return today.sunday?
  end
end


# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
# 同上



#################### 5-15　クラスメソッドの呼び出し ####################

# %%%%%%%%%%%%%%% index.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% menu.rb %%%%%%%%%%%%%%%
require "date"

class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  
  def info
    return "#{self.name} #{self.price}円"
  end
  
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end
    
    # if文を作成してください
    if count >= 1 && Menu.is_discount_day?
      total_price -= 100
    end
    
    return total_price
  end
  
  def Menu.is_discount_day?
    today = Date.today
    return today.sunday?
  end
end


# %%%%%%%%%%%%%%% food.rb %%%%%%%%%%%%%%%
# 同上


# %%%%%%%%%%%%%%% drink.rb %%%%%%%%%%%%%%%
# 同上