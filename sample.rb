a = []
10.upto(14) { |n| a << n }
p a

a = []
14.downto(10) { |n| a << n }
p a

def factorial(n)
  n > 0 ? n * factorial(n - 1) : 1
end

p factorial(5)

def factorial(n)
  ret = 1
  (1..n).each { |n| ret *= n }
  ret
end
p factorial(5)
p factorial(0)

numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
  puts n
  break if n == 5
end

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 3
  end
end

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done
      end
    end
  end
end

foods = ['ピーマン', 'トマト', 'セロリ']
count = 0

foods.each do |food|
  print "#{food}は好きですか？"
  answer = ['はい', 'いいえ'].sample
  answer = 'いいえ'
  puts answer

  count += 1
  redo if answer != 'はい' && count < 2
  count = 0
end