require 'selenium-webdriver'

d = Selenium::WebDriver.for :chrome

d.get("https://typing.twi1.me/game/18144")
d.find_element(:class, 'mtjSeSc-settingBtn').click
sleep(2)
d.find_element(:css, 'body').send_keys(:space)
sleep(2)
d.find_element(:css, 'body').send_keys(:space)

loop do
  text = d.find_element(:css, '.mtjGmSc-roma .mtjNowInput').text
  d.find_element(:css, 'body').send_keys(text)
end
