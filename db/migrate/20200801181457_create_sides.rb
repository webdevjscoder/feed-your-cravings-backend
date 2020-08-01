class CreateSides < ActiveRecord::Migration[6.0]
  def change
    create_table :sides do |t|
      t.string :name
      t.references :meal

      t.timestamps
    end
  end
end
