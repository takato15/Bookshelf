class Chubu < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    niigata: 0, toyama: 1, ishikawa: 2, fukui: 3, 
    yamanashi: 4, nagano: 5, gihu: 6, shizuoka: 7, aichi: 8
  }
  
  # バリデーション
  with_options presence: true do
    validates :prefecture_name
    validates :title
    validates :evaluation
    validates :caption
  end
  
end
