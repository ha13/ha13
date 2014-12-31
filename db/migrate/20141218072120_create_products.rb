class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :name
      t.belongs_to :category

      t.timestamps
    end
  end
  def down

    drop_table :products
  end
end
