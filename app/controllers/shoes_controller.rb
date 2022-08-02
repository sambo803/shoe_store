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
      style: params[:style],
    )
    shoe.save
    render json: shoe.as_json
  end

  def show
    shoe = Shoe.find_by(id: params[:id])
    render shoe.as_json
  end

  def update
    shoe = Shoe.find_by(id: params[:id])
    shoe.color = "blue"
    shoe.brand = "kswiss"
    shoe.style = "tennis"
    shoe.model = "flyer"
    shoe.save
    render json: shoe.as_json
  end
end
