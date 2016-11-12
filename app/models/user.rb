class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_many :favorites
  has_many :favorite_artists, through: :favorites, source: :favorited, source_type: 'Artist'


  def name
    email.split('@')[0]
  end

  def has_profile?
    profile.present?
  end

  def full_name
    profile.full_name
  end

end
