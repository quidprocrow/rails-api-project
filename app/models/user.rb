# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :lists, :dependent => :destroy
  has_many :items
end
