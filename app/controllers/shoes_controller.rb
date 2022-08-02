class ShoesController < ApplicationController
  def index
    shoes = Shoe.all
    render json: shoes.as_json
  end

  def create
    shoe = Shoe.new(
      brand: params[:brand],
      color: params[:color],
      model: params[:model],
      style: params[:style]
    )
    shoe.save
    render json: shoe.as_json
  end

  def show
    shoe = Shoe.create

  # end

end
