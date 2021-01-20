class Player(name, token)
  attr_reader :name, :token
  
  def initialize
    @name = name
    @token = token
  end
end