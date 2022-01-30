class KyusyusController < ApplicationController
  
  def index
    @kyusyus = Kyusyu.all.order(created_at: :desc).page(params[:page]).per(10)
    @kyusyus_all = Kyusyu.all
  end
  
  def new
    @kyusyu = Kyusyu.new
  end
  
  def create
    @kyusyu = Kyusyu.new(kyusyu_params)
    if @kyusyu.save
      redirect_to kyusyus_path, notice: "記事を記載しました。"
    else
      render :new
    end
  end
  
  private

  def kyusyu_params
    params.require(:kyusyu).permit(:title, :caption, :evaluation, :prefecture_name)
  end
  
end
