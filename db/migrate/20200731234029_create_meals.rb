class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.float :price
      t.boolean :isCreated?, default: false

      t.timestamps
    end
  end
end
