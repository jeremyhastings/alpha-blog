class Article < ActiveRecord::Base
  # Controls number of articles per page kaminari pagination
  paginates_per 5

  belongs_to :user

  validates :description, presence: true, length: { minimum: 10, maximum: 300}
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :user_id, presence: true
end