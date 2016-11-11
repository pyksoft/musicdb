class Profile < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :bio, presence: true

  belongs_to :user
  has_many :photos

  def full_name
      "#{firstname} #{lastname}"
  end
end
