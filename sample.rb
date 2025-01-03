text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')
     
hello('Bob')
	
hello('Carol')
TEXT

puts text.gsub(/^[ \t]+$/, '')

text = <<-TEXT
  Lorem ipsum dolor sit amet.
Vestibulum luctus est ut mauris tempor tincidunt.
         Suspendisse eget metus
      Curabitur nec urna eget ligula accumsan congue.
TEXT

puts text.gsub(/[ \t]+/, '')