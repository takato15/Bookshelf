class ChugokusController < ApplicationController
  
  def index
    @chugokus = Chugoku.all.order(created_at: :desc).page(params[:page]).per(10)
    @chugokus_all = Chugoku.all
  end
  
  def new
    @chugoku = Chugoku.new
  end
  
  def create
    @chugoku = Chugoku.new(chugoku_params)
    if @chugoku.save
      redirect_to chugokus_path
    else
      render :new
    end
  end
  
  private

  def chugoku_params
    params.require(:chugoku).permit(:title, :caption, :evaluation, :prefecture_name)
  end
  
end
