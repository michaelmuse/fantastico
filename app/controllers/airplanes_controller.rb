class AirplanesController < ApplicationController

  def create
    Airplane.create({
      name: params[:name],
      manufacturer: params[:manufacturer],
      passenger_capacity: params[:passenger_capacity],
      year_made: params[:year_made]
      })
      redirect_to airplanes_path    
  def index
    @airplanes = Airplane.all
  end

  def new  

  end

  def show
    @airplane = Airplane.find(params[:id])
  end

  def edit
  end

  def destroy    
  end

end