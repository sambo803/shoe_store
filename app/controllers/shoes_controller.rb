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
    shoe.color = params[:color]
    shoe.brand = params[:brand]
    shoe.style = params[:style]
    shoe.model = params[:model]
    shoe.save
    render json: shoe.as_json
  end

  def destroy
    shoe = Shoe.find_by(id: params[:id])
    shoe.destroy
    render json: { message: "shoe is Destroyed!" }
  end
end
