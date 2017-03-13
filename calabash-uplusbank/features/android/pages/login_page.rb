class LoginPage < CommonPage

  USER_NAME_FIELD_ID = 'username'
  PASSWORD_FIELD_ID = 'password'

  LOGIN_BUTTON_ID = 'login'

  USERNAME = CREDENTIALS[:username]
  PASSWORD = CREDENTIALS[:password]

  def check_if_anything_exists
    wait_for_element_exists("*")
  end

  def check_if_login_form_exists
    wait_for_element_exists("* id:'#{USER_NAME_FIELD_ID}'")
    wait_for_element_exists("* id:'#{PASSWORD_FIELD_ID}'")
  end

  def check_if_login_button_exists
    wait_for_element_exists("* id:'#{LOGIN_BUTTON_ID}'")
  end

  def fill_in_credentials
    clear_text_in("* id:'#{USER_NAME_FIELD_ID}'")
    enter_text("* id:'#{USER_NAME_FIELD_ID}'", USERNAME)
    hide_soft_keyboard
    clear_text_in("* id:'#{PASSWORD_FIELD_ID}'")
    enter_text("* id:'#{PASSWORD_FIELD_ID}'", PASSWORD)
    hide_soft_keyboard
  end

  def click_log_in_button
    touch("* id:'#{LOGIN_BUTTON_ID}'")
  end

end