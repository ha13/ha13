class CreateJoinTableCategoryProduct < ActiveRecord::Migration
  def up
    create_join_table :categories, :products, table_name: :categoziration
      # t.index [:category_id, :product_id]
      # t.index [:product_id, :category_id]


  end
  def down
    drop_join_table :categories, :products
  end
end
