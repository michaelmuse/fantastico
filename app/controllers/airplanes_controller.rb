class AirplanesController < ApplicationController

  def new  
  end

  def show
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
  end

end