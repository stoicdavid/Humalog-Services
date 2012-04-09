class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :name
      t.integer :version

      t.timestamps
    end
  end
end
