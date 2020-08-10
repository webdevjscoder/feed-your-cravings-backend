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

    def create
        meal = Meal.new(meal_params(:name, :description, :price))
        meal.category_id = params[:categoryId]
        if meal.save
            options = {
                include: [:category]
            }
            render json: MealSerializer.new(meal, options)
        else
            render json: {message: 'Meal was not created try again!'}
        end
    end

    private

    def meal_params(*args)
        params.require(:meal).permit(*args)
    end
end
