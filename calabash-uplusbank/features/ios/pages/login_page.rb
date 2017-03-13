class LoginPage < CommonPage

  USER_NAME_FIELD_ID = 'UITextField index:0'
  PASSWORD_FIELD_ID = 'UITextField index:1'

  LOGIN_BUTTON_ID = 'UIButton index:0'

  USERNAME = CREDENTIALS[:username]
  PASSWORD = CREDENTIALS[:password]

  def check_if_anything_exists
    wait_for_element_exists("*")
  end

  def check_if_login_form_exists
    wait_for_element_exists("#{USER_NAME_FIELD_ID}")
    wait_for_element_exists("#{PASSWORD_FIELD_ID}")
  end

  def check_if_login_button_exists
    wait_for_element_exists("#{LOGIN_BUTTON_ID}")
  end

  def fill_in_credentials
    clear_text("#{USER_NAME_FIELD_ID}")
    enter_text("#{USER_NAME_FIELD_ID}", USERNAME)
    clear_text("#{PASSWORD_FIELD_ID}")
    enter_text("#{PASSWORD_FIELD_ID}", PASSWORD)
  end

  def click_log_in_button
    touch("#{LOGIN_BUTTON_ID}")
  end

end