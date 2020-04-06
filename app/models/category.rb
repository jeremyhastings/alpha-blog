class Category < ApplicationRecord

  paginates_per 5

  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
end
