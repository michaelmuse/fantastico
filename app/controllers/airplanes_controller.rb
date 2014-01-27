class AirplanesController < ApplicationController

  def new
  end
  def create
    Airplane.create({
      name: params[:name],
      manufacturer: params[:manufacturer],
      passenger_capacity: params[:passenger_capacity],
      year_made: params[:year_made]
      })
      redirect_to airplanes_path    
  end

  def show
  end

  def edit
  end

  def destroy    
  end

end