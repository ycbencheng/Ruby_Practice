class User
  attr_accessor :name, :email

  def initilize
    yield(self) if block_given?
  end
end


user = User.new do |u|
    u.name = "Ben"
  u.email = "bcyc2004@gmail.com"
  end