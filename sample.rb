class CountryCode
  attr_reader :code

  def initialize(code)
    @code = code
  end

  def eql?(other)
    puts "eql?メソッドが呼ばれました"
    other.instance_of?(CountryCode) && code.eql?(other.code)
  end

  def hash
    # ここのcodeは@codeを返すattr_readerで定義されたメソッド
    # つまりレシーバ（self）のインスタンス変数@codeを参照している
    puts "hashメソッドが呼ばれました"
    puts "レシーバのオブジェクトID: #{self.object_id}"
    puts "codeのオブジェクトID: #{code.object_id}"
    puts "codeのhash値: #{code.hash}"
    code.hash
  end
end

japan = CountryCode.new('JP')
currencies = { japan => 'yen' }

hoge = CountryCode.new('JP')
p currencies[hoge]