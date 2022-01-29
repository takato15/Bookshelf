class Okinawa < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    okinawa: 0
  }
  
  # バリデーション
  with_options presence: true do
    validates :title
    validates :evaluation
    validates :caption
  end
  
end
