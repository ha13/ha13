class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :remember_digest, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :slug, :string, unique: true
  end
end
