def regexp_checker_main
  print 'Text?: '
  text = gets.chomp
  
  begin
    print 'Pattern?: '
    pattern = gets.chomp
    regexp = Regexp.new(pattern)
  rescue RegexpError => e
    puts "Invalid pattern: #{e.message}"
    retry
  end
  
  matches = text.scan(regexp)
  if matches.size > 0
    puts "Matched: #{matches.join(', ')}"
  else
    puts 'Nothing matched.'
  end
end

puts "__FILE__: #{__FILE__}"
puts "      $0: #{$0}"

if __FILE__ == $0
  regexp_checker_main
end