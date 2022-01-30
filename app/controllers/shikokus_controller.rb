class ShikokusController < ApplicationController
  
  def index
    @shikokus = Shikoku.all.order(created_at: :desc).page(params[:page]).per(10)
    @shikokus_all = Shikoku.all
  end
  
  def new
    @shikoku = Shikoku.new
  end
  
  def create
    @shikoku = Shikoku.new(shikoku_params)
    if @shikoku.save
      redirect_to shikokus_path, notice: "記事を記載しました。"
    else
      render :new
    end
  end
  
  private

  def shikoku_params
    params.require(:shikoku).permit(:title, :caption, :evaluation, :prefecture_name)
  end
  
end
