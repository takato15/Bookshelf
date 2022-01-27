class Kyusyu < ApplicationRecord
  
  # enum設定
  enum prefecture_name: {
    fukuoka: 0, saga: 1, nagasaki: 2,
    kumamoto: 3, oita: 4, miyazaki: 5, kagoshima: 6
  }
  
end
