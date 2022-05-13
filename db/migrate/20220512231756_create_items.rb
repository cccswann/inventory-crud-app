class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :cost, :scale => 2, :precision => 12

      t.timestamps
    end
  end
end
