class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end
end
# cocktail doses ingredient
# mojito => has a half spoom lemon => ingredient
# mojito => has a orange
# mojito => has a coconut there