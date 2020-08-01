class MealSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :isCreated?
  belongs_to :category
end
