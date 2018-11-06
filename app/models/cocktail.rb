class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  # validates :image_url, presence: true
end
