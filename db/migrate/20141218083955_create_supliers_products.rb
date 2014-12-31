class CreateSupliersProducts < ActiveRecord::Migration
  def up
    create_table :supliers_products do |t|
        t.belongs_to :suplier
        t.belongs_to :product
      t.timestamps
    end
  end
  def down
    drop_table :supliers_products
  end
end
