class CreateStoryLists < ActiveRecord::Migration[5.1]
  def change
    create_table :story_lists do |t|
      t.column :name, :string
      t.column :description, :string
      
      t.timestamps
    end
  end
end
