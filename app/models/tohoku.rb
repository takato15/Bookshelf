class Tohoku < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    aomori: 0, iwate: 1, miyagi: 2,
    akita: 3, yamagata: 4, fukushima: 5
  }
  
  # バリデーション
  with_options presence: true do
    validates :prefecture_name
    validates :title
    validates :evaluation
    validates :caption
  end
  
end
