class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_text
    stock = stock? ? 'あり' : 'なし'
    puts "商品名: #{@name} 価格: #{@price} 在庫: #{stock}"
  end

  def stock?
    raise "子クラスでstock?メソッドを定義してください"
  end
end

class DVD < Product
  def stock?
    # 本当はDBに問い合わせとかをする
    true
  end
end
product = Product.new('A great film', 1000)

dvd = DVD.new('An awesome film', 3000)
p dvd.display_text