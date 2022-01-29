class Shikoku < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    tokushima: 0, kagawa: 1, ehime: 2, kochi: 3
  }
  
  # バリデーション
  with_options presence: true do
    validates :prefecture_name
    validates :title
    validates :evaluation
    validates :caption
  end
  
end
