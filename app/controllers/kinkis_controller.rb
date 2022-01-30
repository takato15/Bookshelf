class KinkisController < ApplicationController
  
  def index
    @kinkis = Kinki.all.order(created_at: :desc).page(params[:page]).per(10)
    @kinkis_all = Kinki.all
  end
  
  def new
    @kinki = Kinki.new
  end
  
  def create
    @kinki = Kinki.new(kinki_params)
    if @kinki.save
      redirect_to kinkis_path, notice: "記事を記載しました。"
    else
      render :new
    end
  end
  
  private

  def kinki_params
    params.require(:kinki).permit(:title, :caption, :evaluation, :prefecture_name)
  end
  
end
