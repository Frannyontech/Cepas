class PagesController < ApplicationController
  def index
    @wines = Wine.includes(:wine_strains, :strains).all.order(:name)
  end
end
