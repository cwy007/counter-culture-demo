class Log < ApplicationRecord
  belongs_to :qrcode
  counter_culture :qrcode
  counter_culture :qrcode, column_name: proc { |model|
    model.description == 'scan' ? "scans_counter_cache" : nil }
  counter_culture :qrcode, column_name: proc { |model|
    model.description == 'scan_subscribe' ? "scan_subscribes_counter_cache" : nil }
end
