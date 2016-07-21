class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.text :ingredient_list
      t.text :instructions
      t.integer :expected_time

      t.timestamps null: false
    end
  end
end
