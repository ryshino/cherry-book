# このクラスは外部ライブラリに定義されてる想定
class Product
  def name
    'A great film'
  end
end

module NameDecorator
  def name
    "<<#{super}>>"
  end
end

class Product
  prepend NameDecorator
end

product = Product.new
p product.name
p Product.ancestors