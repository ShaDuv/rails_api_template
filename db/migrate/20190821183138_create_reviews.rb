class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.string :headline
      t.string :body
      t.integer :rating
    
      t.timestamps
    end
  end
end
