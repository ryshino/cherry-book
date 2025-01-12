text = '誕生日は1997年7月17日です'
text.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/) do
  "#{$~[:year]}-#{$~[:month]}-#{$~[:day]}"
end
