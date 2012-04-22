class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.string :name
      t.string :pdf_type
      t.references :brand
      t.timestamps
    end
      add_index :pdfs, :brand_id
  end
end
