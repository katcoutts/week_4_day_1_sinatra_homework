class Wordformatter

  def initialize(string)
    @string = string
  end

  def upcase
    @string.upcase
  end

  def camel_case
    @string.downcase.split(' ').map(&:capitalize).join
  end

end

