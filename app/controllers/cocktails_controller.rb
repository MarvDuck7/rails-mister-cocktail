class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def create
    @restaurant
  end

  def new
    @cocktails = Cocktail.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end

