class List < ApplicationRecord
  has_many :movies, throught: :bookmarks
  has_many :bookmarks, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
