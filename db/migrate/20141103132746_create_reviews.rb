class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to  :user
      t.belongs_to  :restaurant
      t.string      :critique
      t.integer     :rating
      t.timestamps
    end
  end
end
