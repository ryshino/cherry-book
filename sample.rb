hoge = case [1, 2, 3, 2, 1]
in [*, n , 2, *] if n == 3
  "matched: #{n}"
else
  "not matched"
end
p hoge