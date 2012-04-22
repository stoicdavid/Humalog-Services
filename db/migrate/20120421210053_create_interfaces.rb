class CreateInterfaces < ActiveRecord::Migration
  def change
    create_table :interfaces do |t|
      t.boolean :updated_device
      t.boolean :has_opening
      t.boolean :has_closing
      t.boolean :has_studies
      t.boolean :has_ipp
      t.boolean :has_special
      t.boolean :has_references
      t.references :brand
      t.integer :number_of_menus
      t.boolean :uses_stack_view
      t.string :btn_url
      t.string :over_btn_url
      t.string :nav_btn_url
      t.string :backgrounds_url
      t.timestamps
    end
      add_index :interfaces, :brand_id
  end
end
