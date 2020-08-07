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

    def create
        category = Category.create(category_params(:name))
        if category.save
            render json: CategorySerializer.new(category)
        else
            render json: {message: 'Category already exists!'}
        end
    end

    private

    def category_params(*args)
        params.require(:category).permit(*args)
    end
end
