class User
  attr_accessor :name, :email

  def initilize
    yield(self) if block_given?
  end
end
