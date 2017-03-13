require 'calabash-cucumber/core'
require 'calabash-cucumber/ibase'

class CommonPage < Calabash::IBase
  WEB_VIEW = 'WKWebView'

  LOGIN = CREDENTIALS[:username]
  PASSWORD = CREDENTIALS[:password]


  SUBMIT_BUTTON_XPATH = '//button[@data-ctl="Button" and normalize-space(text())="Submit"]'
  HAMBURGER_MENU_XPATH = '//a[@class="nav-toggle-one"]'
  LOG_OFF_OPTION_XPATH = '//span[@class="menu-item-title" and normalize-space(text())="Log off"]'

  def scroll_down_till_element(query)
    while query(query).first.nil? do
      swipe :up, :query => "*", :offset => {:x => 100, :y => 200}
      sleep 2
    end
  end

  def click_submit_button
    scroll_down_till_element("#{WEB_VIEW} xpath:'#{SUBMIT_BUTTON_XPATH}'")
    touch("#{WEB_VIEW} xpath:'#{SUBMIT_BUTTON_XPATH}'")
    sleep 2
  end

  def press_hamburger_menu
    touch "#{WEB_VIEW} xpath:'#{HAMBURGER_MENU_XPATH}'"
  end

  def press_log_off
    sleep 2 #opening side menu
    touch("#{WEB_VIEW} xpath:'#{LOG_OFF_OPTION_XPATH}'")
  end

  def wait_workaround
    sleep 3
  end
end