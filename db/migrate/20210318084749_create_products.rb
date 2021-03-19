class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :productName
      t.string :category
      t.date :releaseDate
      t.integer :price

      t.timestamps
    end
  end
end
