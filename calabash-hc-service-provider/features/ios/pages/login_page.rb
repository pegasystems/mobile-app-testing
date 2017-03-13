#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class LoginPage < CommonPage

  MAIN_LOGO_LOGIN_PAGE_XPATH = '//img[@class="logo fx1"]'
  USER_NAME_FORM_XPATH = '//input[@id="txtUserID"]'
  PASSWORD_FORM_XPATH = '//input[@id="txtPassword"]'
  LOG_IN_BUTTON_XPATH = '//button[@id="sub"]'

  def check_if_anything_exists
    wait_for_element_exists("*")
  end

  def check_if_main_logo_exists
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{MAIN_LOGO_LOGIN_PAGE_XPATH}'")
  end

  def check_if_login_form_exists
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{USER_NAME_FORM_XPATH}'")
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{PASSWORD_FORM_XPATH}'")
  end

  def check_if_login_button_exists
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{LOG_IN_BUTTON_XPATH}'")
  end

  # If it doesn't work you need to uninstall Android System WebView updates on your device
  def fill_in_credentials
    clear_text("#{WEB_VIEW} xpath:'#{USER_NAME_FORM_XPATH}'")
    enter_text("#{WEB_VIEW} xpath:'#{USER_NAME_FORM_XPATH}'", CREDENTIALS[:username])
    clear_text("#{WEB_VIEW} xpath:'#{PASSWORD_FORM_XPATH}'")
    enter_text("#{WEB_VIEW} xpath:'#{PASSWORD_FORM_XPATH}'", CREDENTIALS[:password])
  end

  def press_log_in_button
    touch("#{WEB_VIEW} xpath:'#{LOG_IN_BUTTON_XPATH}'")
    sleep 7
  end
end