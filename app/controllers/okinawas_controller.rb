class OkinawasController < ApplicationController
  
  def index
    @okinawas = Okinawa.all.order(created_at: :desc).page(params[:page]).per(10)
    @okinawas_all = Okinawa.all
  end
  
  def new
    @okinawa = Okinawa.new
  end
  
  def create
    @okinawa = Okinawa.new(okinawa_params)
    if @okinawa.save
      redirect_to okinawas_path
    else
      render :new
    end
  end
  
  private

  def okinawa_params
    params.require(:okinawa).permit(:title, :caption, :evaluation, :prefecture_name)
  end
  
end
