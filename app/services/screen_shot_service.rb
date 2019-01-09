class ScreenShotService

  require "rubygems"
  require "selenium-webdriver"

  def self.screenshot

    driver = Selenium::WebDriver.for :chrome

    driver.get 'https://localhost:3000/pets/1'

    driver.save_screenshot "picture.png"


  end

end
