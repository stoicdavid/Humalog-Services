class AddOrdenToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :orden, :integer
  end
end
