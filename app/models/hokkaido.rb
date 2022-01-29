class Hokkaido < ApplicationRecord

  # enum設定
  enum prefecture_name: {
    hokkaido: 0
  }

  # バリデーション
  with_options presence: true do
    validates :prefecture_name
    validates :title
    validates :evaluation
    validates :caption
  end

end
