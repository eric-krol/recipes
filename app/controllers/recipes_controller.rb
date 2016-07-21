class RecipesController < ApplicationController
  def index
  end

  def edit
  end

  def new
    @recipe = Recipe.new
  end

  def show
  end

  def create
    @recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to @recipe
      else
        redirect_to :new
      end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      redirect_to :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,:description,:ingredient_list,:instructions,:expected_time,:avatar, :user_id)
  end
end
