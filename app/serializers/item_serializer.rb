class ItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :archived
end
