class Artist < ApplicationRecord
  has_many :artistphotos
  has_and_belongs_to_many :genres
end
