a = [1, 2, 3]
b = [3, 4, 5]
p a | b
p a - b
p a & b

a = Set[1, 2, 3]
b = Set[3, 4, 5]
p a | b
p a - b
p a & b

a, *b, c, d = 1, 2, 3, 4, 5
p a
p b
p c
p d

a = []
b = [2, 3]
a.push(1)
a.push(*b)
p a

def greet(*names)
  p names
  "#{names.join('と')}、こんにちは！"
end

p greet('田中さん')
p greet('田中さん', '鈴木さん')
p greet('田中さん', '鈴木さん', '佐藤さん')

a = [1, 2, 3]
# 配列は*を使うことで展開することが出来る。
p [1, 2, *a, 5]

p '1あ2あ3'.split('あ')

def hoge
  'こんにちは' << '追加できる？'
end
p Array.new(5) { |n| "#{hoge}#{n + 1}" }