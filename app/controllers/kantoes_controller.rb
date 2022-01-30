class KantoesController < ApplicationController
  
  def index
    @kantoes = Kanto.all.order(created_at: :desc).page(params[:page]).per(10)
    @kantoes_all = Kanto.all
  end
  
  def new
    @kanto = Kanto.new
  end
  
  def create
    @kanto = Kanto.new(kanto_params)
    if @kanto.save
      redirect_to kantoes_path, notice: "記事を記載しました。"
    else
      render :new
    end
  end
  
  private

  def kanto_params
    params.require(:kanto).permit(:title, :caption, :evaluation, :prefecture_name)
  end
  
end
