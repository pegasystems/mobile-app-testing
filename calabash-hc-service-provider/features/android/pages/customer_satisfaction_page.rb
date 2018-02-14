#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class CustomerSatisfactionPage < CommonPage

  CUSTOMER_SATISFACTION_TEXT_XPATH = '//span[normalize-space(text())="Customer satisfaction"]'
  NPS_SCORE_DROP_DOWN_MENU_XPATH = '//select[@id="NPSScore"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{CUSTOMER_SATISFACTION_TEXT_XPATH}'")
  end

  def select_nps_score
    touch scroll_down_till_element("#{WEB_VIEW} xpath:'#{NPS_SCORE_DROP_DOWN_MENU_XPATH}'")
    touch("* {text CONTAINS '9'}")
  end
end