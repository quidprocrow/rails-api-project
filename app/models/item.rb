class Item < ApplicationRecord
  belongs_to :list
  belongs_to :user
  validates :content, presence: true
end
