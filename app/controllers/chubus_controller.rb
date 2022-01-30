class ChubusController < ApplicationController

  def index
    @chubus = Chubu.all.order(created_at: :desc).page(params[:page]).per(10)
    @chubus_all = Chubu
  end

  def new
    @chubu = Chubu.new
  end

  def create
    @chubu = Chubu.new(chubu_params)
    if @chubu.save
      redirect_to chubus_index_path, notice: "記事を記載しました。"
    else
      render :new
    end
  end

  private

  def chubu_params
    params.require(:chubu).permit(:title, :caption, :evaluation, :prefecture_name)
  end

end
