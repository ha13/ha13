class AddDetailsToArticles < ActiveRecord::Migration
  def up
    add_column :articles, :rate, :string
  end
  def down
    remove_column :articles, :rate, :string
  end
end
