require 'selenium-webdriver'

d = Selenium::WebDriver.for :chrome

# タイピングゲームページにアクセスし、スペースキーでゲームスタート
d.get("https://typing.twi1.me/game/18144")
sleep(2)
d.find_element(:css, 'body').send_keys(:space)
sleep(2)
d.find_element(:css, 'body').send_keys(:space)
sleep(2)
d.find_element(:css, 'body').send_keys(:space)

# タイピングする文字列を取得
# 取得した文字列をタイピング
loop do
  text = d.find_element(:css, '.mtjGmSc-roma .mtjNowInput').text
  d.find_element(:css, 'body').send_keys(text)
end
