class TextSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :slug
end
