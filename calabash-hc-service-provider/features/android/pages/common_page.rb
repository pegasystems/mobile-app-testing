require 'calabash-cucumber/core'
require 'calabash-android'

class CommonPage < Calabash::ABase
  WEB_VIEW = 'com.pega.mobile.webview.HybridWebView'

  SUBMIT_BUTTON_XPATH = '//button[@data-ctl="Button" and normalize-space(text())="Submit"]'
  HAMBURGER_MENU_ELEMENTS_XPATH = '//*[@class="menu-item menu-item-enabled" and not(@title)]'
  LOG_OFF_OPTION_XPATH = '//span[@class="menu-item-title" and normalize-space(text())="Log off"]'

  def wait_till_element_appears(query, timeout = 15)
    sleep 1 and timeout -= 1 while timeout > 0 and (!element_exists(query) rescue true)
    wait_for_element_exists(query)
  end

  #https://github.com/calabash/calabash-android/issues/706
  def calabash_072_workaround
    sleep 3
  end

  def scroll_down_till_element(query)
    pan("* id:'content'", :down, from: {x: 50, y: 50}, to: {x: 50, y: 25}) while query(query).first.nil?
    query(query).first
  end

  def click_submit_button
    touch scroll_down_till_element("#{WEB_VIEW} xpath:'#{SUBMIT_BUTTON_XPATH}'")
  end

  def press_hamburger_menu
    # workaround for opening hamburger menu
    perform_action('click_on_screen', 5, 5)
  end

  def press_log_off
    touch("#{WEB_VIEW} xpath:'#{LOG_OFF_OPTION_XPATH}'")
  end
end