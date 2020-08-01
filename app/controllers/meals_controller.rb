class MealsController < ApplicationController

    def index
        meals = Meal.all
        options = {
            include: [:category]
        }
        render json: MealSerializer.new(meals, options)
    end

    def show
        meal = Meal.find_by_id(params[:id])
        options = {
            include: [:category]
        }
        render json: MealSerializer.new(meal, options)
    end
end
