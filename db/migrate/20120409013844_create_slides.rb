class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :name
      t.integer :version
      t.string :url
      t.references :category
      t.timestamps
    end
    add_index :slides, :category_id
  end
end
