text = '私の誕生日は1997年7月17日です。'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
p m[:year]
p m[:month]
p m[:day]
# 文字列もOK
p m['year']

if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts text
  puts "#{year}/#{month}/#{day}"
end