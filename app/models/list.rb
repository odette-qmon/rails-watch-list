class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
  # cloudinary and active storage config
  has_one_attached :photo
  # we could add a validation for photos here
end
