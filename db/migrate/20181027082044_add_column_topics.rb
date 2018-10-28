class AddColumnTopics < ActiveRecord::Migration[5.2]
  def up
    add_column :topics, :title, :string
    add_column :topics, :target, :string
  end
end
