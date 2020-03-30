class User < ActiveRecord::Base
  validates :user, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
