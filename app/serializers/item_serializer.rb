class ItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :archived
  has_one :list
  has_one :user
end
