class HokkaidoesController < ApplicationController
  
  def index
    @hokkaidoes = Hokkaido.all.order(created_at: :desc).page(params[:page]).per(10)
    @hokkaidoes_all = Hokkaido.all
  end
  
  def new
    @hokkaido = Hokkaido.new
  end
  
  def create
    @hokkaido = Hokkaido.new(hokkaido_params)
    if @hokkaido.save
      redirect_to hokkaidoes_path
    else
      render :new
    end
  end
  
  private

  def hokkaido_params
    params.require(:hokkaido).permit(:title, :caption, :evaluation, :prefecture_name)
  end
  
end
