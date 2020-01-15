class AttractionsController < ApplicationController
  def index
    @attractions=Attraction.all
  end

  def show
    @attraction=Attraction.find_by(id: params[:id])
  end

  def new
    @attraction=Attraction.new
  end

  def create
    attraction=Attraction.create()
  end

  def edit
  end

  def update
  end

  private
  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :happiness_rating, :nausea_rating, :min_height)
  end
end
