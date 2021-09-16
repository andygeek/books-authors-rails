class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :author

  validates :title, presence: true
  validates :year, presence: true
  validates :genre, presence: true
  validates :author, presence: true
end
