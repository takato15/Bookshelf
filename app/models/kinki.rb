class Kinki < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    mie: 0, shiga: 1, kyoto: 2,
    osaka: 3, hyogo: 4, nara: 5, wakayama: 6
  }
  
end
