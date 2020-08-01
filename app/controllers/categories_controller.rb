class CategoriesController < ApplicationController

    def index
        categories = Category.all
        options = {
            include: [:meals]
        }
        render json: CategorySerializer.new(categories, options)
    end

    def show
        category = Category.find_by_id(params[:id])
        options = {
            include: [:meals]
        }
        render json: CategorySerializer.new(category, options)
    end
end
