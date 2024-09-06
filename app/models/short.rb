class Short < ApplicationRecord
  has_many :tags, as: :taggable
end
