class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :headline
      t.text :description
      t.string :address
      t.integer :price

      t.timestamps
    end
  end
end
