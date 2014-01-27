class AirplanesController < ApplicationController

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