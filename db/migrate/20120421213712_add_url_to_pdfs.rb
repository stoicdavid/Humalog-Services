class AddUrlToPdfs < ActiveRecord::Migration
  def change
    add_column :pdfs, :url, :string
  end
end
