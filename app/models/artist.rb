class Artist < ApplicationRecord
  has_many :artistphotos
  has_many :songs
  has_and_belongs_to_many :genres

def self.search(search)
    if search
      where('name ILIKE :search', search: "%#{search}%")
    else
      order(sort_column + ' ' + sort_direction)
    end
  end
end
