class Review < ApplicationRecord
  belongs_to :place
  validates :user_name, presence: true
  validates :headline, presence: true
  validates :body, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: 1..5
end
