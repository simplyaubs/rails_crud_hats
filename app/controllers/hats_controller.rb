class HatsController < ApplicationController

  def index
    @hat = Hat.new
    @hats = Hat.all
  end

  def create
    @hat = Hat.new(hat_params)
    if @hat.save

      redirect_to hats_path
    else
      render :index
    end
  end

  private
  def hat_params
    params.require(:hat).permit(:brand, :fit)
  end

end