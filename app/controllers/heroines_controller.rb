class HeroinesController < ApplicationController
  
  def index
    @heroines = Heroine.all
  end
  def show
    @heroines = Heroine.find(params[:id])
  end
  
  def new
    @heroines = Heroine.new
  end

  def create()
      @heroines = Heroine.new(params[:id])
      @heroines.save
      redirect_to @heroines
  end

  # def hero_params
  #   params.require(:heroine).permit(:name,:super_name)
  # end

end
