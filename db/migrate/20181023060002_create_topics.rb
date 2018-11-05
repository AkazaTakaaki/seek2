class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.text :description
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :title
      t.string :target
      t.datetime :date_time
      t.string :place_search
      t.integer :price

      t.timestamps
    end
  end
end
