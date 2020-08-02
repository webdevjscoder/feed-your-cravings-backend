class MealSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :isCreated?, :description
  belongs_to :category
end
