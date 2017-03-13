#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class CustomerDetailsPage < CommonPage

  COLLECT_CUSTOMER_DETAILS_TEXT_XPATH = '//span[normalize-space(text())="Collect customer details"]'
  NAME_FORM_XPATH = '//input[@id="Name"]'
  PHONE_NUMBER_FORM_XPATH = '//input[@id="Phone"]'

  def check_elements
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{COLLECT_CUSTOMER_DETAILS_TEXT_XPATH}'")
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{NAME_FORM_XPATH}'")
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{PHONE_NUMBER_FORM_XPATH}'")
  end

  def provide_name
    enter_text("#{WEB_VIEW} xpath:'#{NAME_FORM_XPATH}'", "John Doe")
  end

  def provide_phone_number
    enter_text("#{WEB_VIEW} xpath:'#{PHONE_NUMBER_FORM_XPATH}'", "987654321")
  end
end