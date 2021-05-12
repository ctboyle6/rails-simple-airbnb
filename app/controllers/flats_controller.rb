class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
  end

  private

  def flat_params
    params.require(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
