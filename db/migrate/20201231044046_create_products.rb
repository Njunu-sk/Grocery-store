class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image
      t.decimal :price, precision: 5, sclae: 2, default: 0

      t.timestamps
    end
  end
end
