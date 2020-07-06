class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
     end

  def edit 
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])
    @power.update
    redirect_to power_path(@power)
  end
  
  

end
