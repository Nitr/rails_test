class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :price, null:false, default: 0
      t.references :catalog, index: true, null:false, foreign_key: true

      t.timestamps null: false
    end

    add_index :products, [:catalog_id, :name], :unique => true
  end
end
