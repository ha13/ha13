class CreateSupliers < ActiveRecord::Migration
  def up
    create_table :supliers do |t|
      t.string :name

      t.timestamps
    end
  end
  def down
    drop_table :supliers
  end
end
