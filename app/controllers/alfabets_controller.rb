class AlfabetsController < ApplicationController

  def index
    @alfabets = Alfabet.all 
  end 

  def show 
    @alfabet = Alfabet.find(params[:id])
  end 

  def new 
    @alfabet = Alfabet.new
  end

  def create 
    @alfabet = Alfabet.new(alfabet_params)
    if @alfabet.save 
      redirect_to @alfabet
    else
      render :new
    end
  end

  def edit 
    @alfabet = Alfabet.find(params[:id])
  end

  def update 
    @alfabet = Alfabet.find(params[:id])
    if @alfabet.update(alfabet_params)
      redirect_to @alfabet
    else
      render :edit 
    end
  end

  def destroy
    @alfabet = Alfabet.find(params[:id])
    @alfabet.destroy
    redirect_to alfabets_path
  end

  private

  def alfabet_params
    params.require(:alfabet).permit(:name)
  end

end
