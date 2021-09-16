class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :complete_name

  def complete_name
    "#{object.name} #{object.last_name}"
  end
end
