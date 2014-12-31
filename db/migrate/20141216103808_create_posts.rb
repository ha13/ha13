class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :body
      t.references :Article, index: true

      t.timestamps
    end
  end
end
