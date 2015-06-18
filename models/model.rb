class Result
  attr_accessor :name
  def response(name, emotion)
    @name=name
    @emotion=emotion
    if @emotion=="panic"
      return "AAAAH!"
    else 
      return "I Gotya"
    end
  end
end
