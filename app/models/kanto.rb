class Kanto < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    ibaraki: 0, tochigi: 1, gunma: 2,
    saitama: 3, chiba: 4, tokyo: 5, kanagawa: 6
  }
  
  # バリデーション
  with_options presence: true do
    validates :prefecture_name
    validates :title
    validates :evaluation
    validates :caption
  end
  
end
