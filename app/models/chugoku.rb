class Chugoku < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    tottori: 0, shimane: 1, okayama: 2,
    hiroshima: 3, yamaguchi: 4
  }
  
end
