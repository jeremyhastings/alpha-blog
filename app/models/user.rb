class User < ActiveRecord::Base
  validates :user, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
