class InvalidCountryError < StandardError
  # エラーを捕捉した側でcountryの値を参照したい場合に必要
  attr_reader :country

  def initialize(country)
    @country = country  # インスタンス変数に保存
    super("無効な国名です: #{country}")
  end
end

# 使用例
begin
  country = "XYZ"
  raise InvalidCountryError.new(country)
rescue InvalidCountryError => e
  puts e.message        # => "無効な国名です: XYZ"
  puts e.country        # => "XYZ"  # あとで国名だけを取り出せる
end