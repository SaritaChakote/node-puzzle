assert = require 'assert'
test = require 'selenium-webdriver/testing'
webdriver = require 'selenium-webdriver'
chrome = require("selenium-webdriver/chrome");

test.describe 'Adslot website', ->

  # Browser (or driver) instance
  browser = chrome
  # Init browser before we begin
  test.before -> browser = new webdriver.Builder().usingServer().withCapabilities({browserName: 'chrome'}).build()

  # Close browser after all tests
  test.after -> browser.quit()


  #test.it 'should have 8 offices on careers page', ->

    #browser.get 'http://adslot.com/careers'

    #browser.findElements(webdriver.By.css('.ui-tabs-nav h4, .ui-tabs-nav h2')).then (menuItems) ->
     # assert menuItems.length, 8


	 # test case updated
  test.it 'should contain a form on "contact us" page', ->

    browser.get 'http://www.adslot.com/contact-us'

    browser.findElement(webdriver.By.id('input_2_1')).isDisplayed()
    browser.findElement(webdriver.By.id('input_2_2')).isDisplayed()
    browser.findElement(webdriver.By.id('input_2_3')).isDisplayed()
    browser.findElement(webdriver.By.id('gform_submit_button_2')).isDisplayed()

	# new test cases
  test.it 'should contain a form on "our solutions" page', ->

    browser.get 'https://www.adslot.com/our-solutions/'

    browser.findElement(webdriver.By.xpath('/html/body/div/div/div/div[1]/div/div/div/div/div/div[1]/ul/li[1]/a/span/strong[2]')).isDisplayed()
    browser.findElement(webdriver.By.xpath('/html/body/div/div/div/div[1]/div/div/div/div/div/div[1]/ul/li[2]/a/span/strong[2]')).isDisplayed()
    browser.findElement(webdriver.By.xpath('/html/body/div/div/div/div[1]/div/div/div/div/div/div[2]/div/div[2]/div[2]/div[5]/div/div/div/div/div/p[1]/a')).isDisplayed()
    browser.findElement(webdriver.By.xpath('/html/body/div/div/div/div[1]/div/div/div/div/div/div[2]/div/div[2]/div[2]/div[5]/div/div/div/div/div/p[2]/a')).isDisplayed()
	
	
  test.it 'should contain a form on "Careers" page', ->

    browser.get 'https://www.adslot.com/careers/'

    browser.findElement(webdriver.By.xpath('/html/body/div/div/div/div[3]/div[1]/div/div/div/div/p[3]/a')).isDisplayed()
    browser.findElement(webdriver.By.xpath('/html/body/div/div/div/div[11]/div[2]/div/div/a[1]')).isDisplayed()
    browser.findElement(webdriver.By.xpath('/html/body/div/div/div/div[11]/div[2]/div/div')).isDisplayed()
  
  test.it 'should contain a new form on "contact us" page', ->

    browser.get 'http://www.adslot.com/contact-us'

    browser.findElement(webdriver.By.id('input_2_1')).isDisplayed()
    browser.findElement(webdriver.By.id('input_2_2')).isDisplayed()
    browser.findElement(webdriver.By.id('input_2_3')).isDisplayed()
    browser.findElement(webdriver.By.id('input_2_4')).isDisplayed()
    browser.findElement(webdriver.By.id('input_2_5')).isDisplayed()
    browser.findElement(webdriver.By.id('input_2_6_chosen')).isDisplayed()
    browser.findElement(webdriver.By.id('input_2_8')).isDisplayed()
    browser.findElement(webdriver.By.id('gform_submit_button_2')).isDisplayed()






	