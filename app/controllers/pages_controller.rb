class PagesController < ApplicationController
  def index
    @wines = Wine.includes(:wine_strains).all
  end
end
