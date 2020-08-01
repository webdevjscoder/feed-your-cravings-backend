class RemoveColumnFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :meal_id
  end
end
