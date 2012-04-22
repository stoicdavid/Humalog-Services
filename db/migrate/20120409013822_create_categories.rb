class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :brand
      t.timestamps
    end
      add_index :categories, :brand_id
  end
end
