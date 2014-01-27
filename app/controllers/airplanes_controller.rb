class AirplanesController < ApplicationController

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