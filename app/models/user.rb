class User < ActiveRecord::Base
  validates :username, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
