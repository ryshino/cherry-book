module A
  def to_s
    "<A> #{super}"
  end
end

module B
  def to_s
    "<B> #{super}"
  end
end

class Product
  def to_s
    "<Product> #{super}"
  end
end

class DVD < Product
  include B
  include A

  def to_s
    "<DVD> #{super}"
  end
end

dvd = DVD.new
p dvd.to_s