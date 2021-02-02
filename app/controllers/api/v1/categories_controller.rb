class Api::V1::CategoriesController < ApplicationController
     def index
          categories = Category.all
          render json: Category.new(categories)
     end
end
