class Video < ApplicationRecord
  has_many :tags, as: :taggable
end
