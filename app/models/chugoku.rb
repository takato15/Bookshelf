class Chugoku < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    tottori: 0, shimane: 1, okayama: 2,
    hiroshima: 3, yamaguchi: 4
  }
  
  # バリデーション
  with_options presence: true do
    validates :prefecture_name
    validates :title
    validates :evaluation
    validates :caption
  end
  
end
