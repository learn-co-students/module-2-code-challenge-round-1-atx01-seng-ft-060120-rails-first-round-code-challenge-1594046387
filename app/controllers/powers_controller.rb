class PowersController < ApplicationController

  before_action :find_power, only: [:show, :edit, :update]

  def index
    @powers = Power.all
  end

  def show
  end

  def edit
  end

  def update
    @power = Power.find(params[:id])
    @power.update(power_params)

    @heroine_ids = params[:power][:heroine_ids]
    @heroine_ids.each do |id|
      @heroine = Heroine.find_by(id: id.to_i)
      if !@heroine.powers.include? @power
        @heroine.powers << @power
      end
    end

    redirect_to @power
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end
  
  def find_power
    @power = Power.find(params[:id])
  end
end
