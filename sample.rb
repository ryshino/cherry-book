case ["a", 1, "b", "c", 2]
in [*head, String => s1, String => s2, *tail]
  puts "最初の文字列: #{s1}"  # => "b"
  puts "次の文字列: #{s2}"    # => "c"
  puts "head: #{head}"        # => ["a", 1]
  puts "tail: #{tail}"        # => [2]
end

data = [
  {type: "user", name: "Alice"},
  {type: "admin", name: "Bob"},
  {type: "user", name: "Charlie"}
]

# adminを探す
case data
in [*, {type: "admin", name: name}, *]
  puts "管理者: #{name}"  # => "管理者: Bob"
end