require('minitest/autorun')
require('minitest/rg')
require_relative('../models/wordformatter')

class TestWordformatter < Minitest::Test

  def setup
    @wordformatter = Wordformatter.new('eh166wb')
    @codeclan = Wordformatter.new('code clan')
  end

  def test_upcase
    assert_equal('EH166WB', @wordformatter.upcase)
  end 

  def test_camel_case
    assert_equal('CodeClan', @codeclan.camel_case)
  end

end