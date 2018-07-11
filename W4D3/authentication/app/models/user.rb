class User < ApplicationRecord
  #we use password even tho we don't have that column name, just sets the password_digest column
  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(User.password_digest).is_password?(password)
  end
end
