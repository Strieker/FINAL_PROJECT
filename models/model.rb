class Result
  attr_accessor :input
  def response(input)
    @input=input
    return @input.upcase
  end
end
