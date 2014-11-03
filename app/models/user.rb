require 'bcrypt'

class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many  :reviews

  def self.authenticate(attributes)
    user = User.find_by(email: attributes[:email])
    return user if user && user.password == attributes[:password]
    return nil
  end

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
end
