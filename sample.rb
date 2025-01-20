add_proc = Proc.new { |a, b| a.to_i + b.to_i }
add_proc.call(10)
add_proc.call(10, 20, 30)

add_lambda = -> (a, b) { a.to_i + b.to_i }
# ラムダは個数について厳密なので、引数が2個ちょうどでなければエラーになる
add_lambda.call(10)
add_lambda.call(10, 20, 30)