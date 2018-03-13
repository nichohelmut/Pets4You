class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
