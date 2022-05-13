class CreateInventoryLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_levels do |t|
      t.integer :available
      t.references :item, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true

      t.timestamps
    end
  end
end
