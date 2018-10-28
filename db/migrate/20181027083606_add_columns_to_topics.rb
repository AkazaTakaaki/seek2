class AddColumnsToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :title, :string
    add_column :topics, :target, :string
  end
end