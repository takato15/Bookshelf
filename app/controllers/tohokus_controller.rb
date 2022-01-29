class TohokusController < ApplicationController

  def index
    @tohokus = Tohoku.all.order(created_at: :desc).page(params[:page]).per(10)
  end

  def new
    @tohoku = Tohoku.new
  end

  def create
    @tohoku = Tohoku.new(tohoku_params)
    if @tohoku.save
      redirect_to tohokus_path
    else
      render :new
    end
  end

  private

  def tohoku_params
    params.require(:tohoku).permit(:title, :caption, :evaluation, :prefecture_name)
  end

end
