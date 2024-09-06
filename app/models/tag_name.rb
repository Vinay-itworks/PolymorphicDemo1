class TagName < ApplicationRecord
  has_many :tags
  validates :name, uniqueness: { case_sensitive: false }
end
