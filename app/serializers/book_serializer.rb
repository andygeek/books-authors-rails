class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :year
  belongs_to :author
  belongs_to :genre
end
