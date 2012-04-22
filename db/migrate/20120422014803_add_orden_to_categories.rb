class AddOrdenToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :orden, :integer
  end
end
