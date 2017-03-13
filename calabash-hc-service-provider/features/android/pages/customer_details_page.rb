#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class CustomerDetailsPage < CommonPage

  COLLECT_CUSTOMER_DETAILS_TEXT_XPATH = '//span[normalize-space(text())="Collect customer details"]'
  NAME_FORM_XPATH = '//input[@id="Name"]'
  PHONE_NUMBER_FORM_XPATH = '//input[@id="Phone"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{COLLECT_CUSTOMER_DETAILS_TEXT_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{NAME_FORM_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PHONE_NUMBER_FORM_XPATH}'")
  end

  def provide_name
    hide_soft_keyboard
    enter_text("#{WEB_VIEW} xpath:'#{NAME_FORM_XPATH}'", "John Doe")
    hide_soft_keyboard
  end

  def provide_phone_number
    hide_soft_keyboard
    enter_text("#{WEB_VIEW} xpath:'#{PHONE_NUMBER_FORM_XPATH}'", "987654321")
    hide_soft_keyboard
  end
end