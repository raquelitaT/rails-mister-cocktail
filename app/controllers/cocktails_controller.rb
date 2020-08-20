class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(strong_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  private

  def strong_params
    params.require(:cocktail).permit(:name)
  end
end


# Dose.select(params[:cocktail_id])
