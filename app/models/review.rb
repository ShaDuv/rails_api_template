class Review < ApplicationRecord
  belongs_to :place, dependent: :destroy
end
