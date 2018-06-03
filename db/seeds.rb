# 初始化 qrcode 数据
10.times do |i|
  Qrcode.create(name: "qrcode name #{i}")
end
puts "create 10 qrcode records."

# 初始化 log 数据
Qrcode.each do |code|
  5.times do |i|
    code.logs.create(
      description: ["scan", "scan_subscribe"].sample
    )
  end
end
