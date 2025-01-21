require 'date'

records = [
  [2021],
  [2019, 5],
  [2017, 11, 25]
]
new_records =  records.map do |record|
  case record
  in [y]
    Date.new(y, 1, 1)
  in [y, m]
    Date.new(y, m, 1)
  in [y, m, d]
    Date.new(y, m, d)
  end
end

p new_records