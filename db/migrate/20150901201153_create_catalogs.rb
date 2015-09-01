class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :name, null:false
      t.text :description

      t.timestamps null: false
    end

    add_index :catalogs, :name, unique:true
  end
end
