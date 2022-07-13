#################### 4-1　目標物の確認 ####################

# 特になし！


#################### 4-2　クラスの定義 ####################

# Menuクラスを定義してください
class Menu
end


#################### 4-3　インスタンス変数 ####################

class Menu
    # nameとpriceというインスタンス変数を用意してください
    attr_accessor :name
    attr_accessor :price
end
  

#################### 4-4　インスタンスの生成 ####################

class Menu
    attr_accessor :name
    attr_accessor :price
end

# Menuクラスのインスタンスを生成して変数menu1に代入してください
menu1 = Menu.new
  

#################### 4-5　インスタンス変数を用いる ####################

class Menu
    attr_accessor :name
    attr_accessor :price
end

menu1 = Menu.new

menu1.name = "ピザ"
puts menu1.name

# menu1のpriceに「800」を代入してください
menu1.price = 800

# menu1のpriceを出力してください
puts menu1.price
  

#################### 4-6　複数のインスタンス ####################

class Menu
    attr_accessor :name
    attr_accessor :price
end

menu1 = Menu.new

menu1.name = "ピザ"
puts menu1.name

menu1.price = 800
puts menu1.price

# Menuクラスのインスタンスを生成して変数menu2に代入してください
menu2 = Menu.new

# menu2のnameに「すし」を代入してください
menu2.name = "すし"

# menu2のnameを出力してください
puts menu2.name

# menu2のpriceに「1000」を代入してください
menu2.price = 1000

# menu2のpriceを出力してください
puts menu2.price
  

#################### 4-7　メソッドを用いる ####################

class Menu
    attr_accessor :name
    attr_accessor :price
    
    # infoメソッドを定義してください
    def info
        puts "料理名と値段が表示されます"
    end
end

menu1 = Menu.new
menu1.name = "ピザ"
menu1.price = 800

# menu1に対してinfoメソッドを呼び出してください
menu1.info
  

#################### 4-8　インスタンスメソッド ####################

class Menu
    attr_accessor :name
    attr_accessor :price
    
    def info
        # 文字列「料理名と値段が表示されます」をreturnしてください
        return "料理名と値段が表示されます"
    end
end

menu1 = Menu.new
menu1.name = "ピザ"
menu1.price = 800

# menu1に対してinfoメソッドを呼び出して戻り値を出力してください
puts menu1.info
  

#################### 4-9　メソッドとインスタンス変数 ####################

class Menu
    attr_accessor :name
    attr_accessor :price
    
    def info
        # 「#{}」の中身を埋めてください
        return "#{self.name} #{self.price}円"
    end
end

menu1 = Menu.new
menu1.name = "ピザ"
menu1.price = 800

puts menu1.info
  

#################### 4-10　クラスとインスタンスの復習 ####################

class Menu
    attr_accessor :name
    attr_accessor :price
    
    def info
          return "#{self.name} #{self.price}円"
    end
    
    # get_total_priceメソッドを定義してください
    def get_total_price(count)
        total_price = self.price * count
        if(count >= 3)
              total_price -= 100
        end
        return total_price
    end
    
end

menu1 = Menu.new
menu1.name = "ピザ"
menu1.price = 800

# menu1に対してget_total_priceメソッドを呼び出してください
puts menu1.get_total_price(3)
  

#################### 4-11　initializeメソッド(1) ####################

class Menu
    attr_accessor :name
    attr_accessor :price
    
    # initializeメソッドを定義してください
    def initialize
          self.name = "ピザ"
          self.price = 800
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

menu1 = Menu.new

# menu1に対してinfoメソッドを呼び出して戻り値を出力してください
puts menu1.info
  

#################### 4-12　initializeメソッド(2) ####################

class Menu
    attr_accessor :name
    attr_accessor :price
    
    # initializeメソッドを書き換えてください
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

# 引数を渡してインスタンスを生成してください
menu1 = Menu.new(name: "すし", price: 1000)

puts menu1.info
  

#################### 4-13　ファイルを分割しよう ####################

# %%%%%%%%%% index.rb %%%%%%%%%%
# Menuクラスをmenu.rbに移動して、このファイルからは削除してください
# Menuクラスを移動したら、menu.rbを読み込んでください
require './menu'

# 以下のコードは移動させないでください
menu1 = Menu.new(name: "すし", price: 1000)

puts menu1.info

# %%%%%%%%%% menu.rb %%%%%%%%%%
# ここにMenuクラスを貼り付けてください
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
  

#################### 4-14　メニューの一覧表示機能 ####################

# %%%%%%%%%% index.rb %%%%%%%%%%
require "./menu"

menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

# 変数menusを定義して配列を代入してください
menus = [menu1, menu2, menu3, menu4]

# menusに対して繰り返し処理を実行してください
menus.each do |menu|
  puts menu.info
end

# %%%%%%%%%% menu.rb %%%%%%%%%%
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

#################### 4-15　メニューの一覧表示機能(2) ####################

# %%%%%%%%%% index.rb %%%%%%%%%%
require "./menu"

menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

menus = [menu1, menu2, menu3, menu4]

# 変数indexを定義して「0」を代入してください
index = 0

menus.each do |menu|
  # 番号をつけてメニューの内容が出力されるように書き換えてください
  puts "#{index}. #{menu.info}"

  # 変数indexに1を加えて値を更新してください
  index += 1
end

# %%%%%%%%%% menu.rb %%%%%%%%%%
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

#################### 4-16　入力を受け取る ####################

# %%%%%%%%%% index.rb %%%%%%%%%%
puts "名前を入力してください"

# 入力を受け取って変数nameに代入してください
name = gets.chomp

# 「○○さん、いらっしゃいませ」となるように出力してください
puts "#{name}さん、いらっしゃいませ"

puts "1つ100円のお菓子があります"
puts "いくつ買いますか?"

# 入力を数値として受け取って変数countに代入してください
count = gets.chomp.to_i

# 変数total_priceに、100とcountを掛けた値を代入してください
total_price = 100 * count

# 「お会計は○○円です」となるように出力してください
puts "お会計は#{total_price}円です"


#################### 4-17　メニューの選択機能 ####################

# %%%%%%%%%% index.rb %%%%%%%%%%

require "./menu"

menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

menus = [menu1, menu2, menu3, menu4]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"

# 入力を数値として受け取って変数orderに代入してください
order = gets.chomp.to_i

# 選択されたメニューのインスタンスを変数selected_menuに代入してください
selected_menu = menus[order]

# 「選択されたメニュー: ○○」となるように出力してください
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"

# 入力を数値として受け取って変数countに代入してください
count = gets.chomp.to_i

# 「お会計は○○円です」となるように出力してください
puts "お会計は#{selected_menu.get_total_price(count)}円です"

# %%%%%%%%%% menu.rb %%%%%%%%%%
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

