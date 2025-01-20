require 'minitest/autorun'
require_relative '../lib/regexp_checker'

class RegexpCheckerTest < Minitest::Test
  def test_main_when_matched
    # ユーザーの入力値
    inputs = [
      "123-456-789\n",
      "[1-6+\n",
      "[1-6]+\n"
    ]
    # 期待する標準出力の内容
    expected = [
      'Text?: ',
      'Pattern?: ',
      "Invalid pattern: premature end of char-class: /[1-6+/\n",
      'Pattern?: ',
      "Matched: 123, 456\n"
    ].join
    
    # スタブを使って標準入力の入力値を偽装する
    stub :gets, -> { inputs.shift } do
      # regexp_checker_mainを実行して、期待通りの出力が得られるか検証する
      assert_output(expected) do
        regexp_checker_main
      end
    end
  end

  def test_main_when_not_matched
    inputs = [
      "abc-def-ghi\n",
      "[1-6]+\n"
    ]
    expected = [
      'Text?: ',
      'Pattern?: ',
      "Nothing matched.\n"
    ].join
    
    stub :gets, -> { inputs.shift } do
      assert_output(expected) do
        regexp_checker_main
      end
    end
  end
end
