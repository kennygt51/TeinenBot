require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = "*********"
  config.consumer_secret = "********"
  config.access_token = "***********"
  config.access_token_secret = "*************"
end

#2014卒の定年2057/3/31までの日付を計算
now = Time.now
enterCompany = Time.mktime(2057,3,31,0,0,0)
cd = ((enterCompany - now)/(60*60*24)).ceil

#cronで呟く。
client.update("2014卒の定年退職まであと#{cd}日です。")
puts "#{cd}"

