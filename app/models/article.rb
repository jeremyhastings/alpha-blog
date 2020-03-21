class Article < ActiveRecord::Base
  # Enforces that the title is not nil, a minimum of 3 characters and a
  # maximum of 50.
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  # Enforces that the description is not nil, a minimum of 10 characters and a
  # maximum of 300.
  validates :description, presence: true, length: { minimum: 10, maximum: 300}
end