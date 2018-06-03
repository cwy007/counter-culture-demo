class Log < ApplicationRecord
  belongs_to :qrcode
  counter_culture :qrcode
end
