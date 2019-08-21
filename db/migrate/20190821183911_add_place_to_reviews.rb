class AddPlaceToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :place, foreign_key: true, index: true
  end
end
