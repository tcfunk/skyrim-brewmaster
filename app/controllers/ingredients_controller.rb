class IngredientsController < ApplicationController
  respond_to :json
  
  def index
    respond_with Ingredient.all
  end
end
