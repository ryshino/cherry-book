h = Hash.new('hello')
a = h[:foo]
b = h[:bar]

p h

p %s!ruby is fun!
p %s(ruby is fun)
p %i(apple orange melon)

name = 'Alice'
p %i(hello\ngood-bye #{name.upcase})
p %I(hello\ngood-bye #{name.upcase})