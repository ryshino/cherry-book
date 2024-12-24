numbers = [1, 2, 3]

# 存在する要素の場合：ブロックは実行されない
numbers.delete(1) { puts "要素が見つかりません" }
# => 1 （ブロックは実行されない）

# 存在しない要素の場合：ブロックが実行される
numbers.delete(100) { puts "要素が見つかりません" }
# => "要素が見つかりません" （ブロックが実行される）

numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n}

even_numbers = numbers.select { |n| n.even? }
even_numbers

non_nultiples_of_three = numbers.reject { |n| n % 3 == 0}
non_nultiples_of_three

numbers.sum { |n| n * 2 }

chars = ['a', 'b', 'c', 'd']
chars.join('-')

chars.sum('') { |c| c.upcase }

# 3を含む
p chars[1..3]

# 3を含まない
p chars[1...3]

# 配列を作れる
p ('a'..'d').to_a

sum = 0
(1..5).each { |num| sum += num }
p sum