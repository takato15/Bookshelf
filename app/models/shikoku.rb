class Shikoku < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    tokushima: 0, kagawa: 1, ehime: 2, kochi: 3
  }
  
end
