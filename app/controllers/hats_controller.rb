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

  def show
    @hat = Hat.find(params[:id])
  end

  def edit
    @hat = Hat.find(params[:id])
  end

  def update
    @hat = Hat.find(params[:id])
    @hat.update_attributes!(hat_params)

    redirect_to hats_path
  end

  def destroy
    @hat = Hat.find(params[:id]).delete

    redirect_to hats_path
  end

  private
  def hat_params
    params.require(:hat).permit(:brand, :fit)
  end

end