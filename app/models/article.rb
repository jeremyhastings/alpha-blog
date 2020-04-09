class Article < ApplicationRecord
  # Controls number of articles per page kaminari pagination
  paginates_per 5

  belongs_to :user

  has_many :article_categories
  has_many :categories, through: :article_categories

  validates :description, presence: true, length: { minimum: 10, maximum: 300}
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :user_id, presence: true
end