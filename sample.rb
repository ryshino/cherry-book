fruits = ['apple', 'orange', 'melon']
p fruits.each

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
areas = []
dimensions.each do |length, width|
  areas << length * width
end
p areas

(length, width), i = [[10, 20], 0]
p length
p width
p i

p ['1', '20', '300'].map { _1.rjust(3, '0') }

sum = 0
[[1, 2, 3,], [4, 5, 7]].each do |values|
  values.each do
    sum += _1
  end
end　