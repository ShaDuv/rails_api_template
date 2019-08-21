class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :city, presence: true
  validates :country, presence: true 
end
