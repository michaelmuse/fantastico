class AirplanesController < ApplicationController

  def create
    Airplane.create({
      name: params[:name],
      manufacturer: params[:manufacturer],
      passenger_capacity: params[:passenger_capacity],
      year_made: params[:year_made]
      })
      redirect_to airplanes_path  
  end

  def index
    @airplanes = Airplane.all
  end

  def new  

  end

  def show
    @airplane = Airplane.find(params[:id])
  end

  def edit
    @airplane = Airplane.find(params[:id])
  end

  def update
    airplane = Airplane.find(params[:id])
    airplane.name = params[:airplane][:name]
    airplane.manufacturer = params[:airplane][:manufacturer]
    airplane.year_made = params[:airplane][:year_made]
    airplane.passenger_capacity = params[:airplane][:passenger_capacity]
    airplane.save
    redirect_to airplanes_path
  end

  def destroy
    Airplane.find(params[:id]).destroy
    redirect_to root_path  
  end

end