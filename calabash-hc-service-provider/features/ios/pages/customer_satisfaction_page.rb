#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class CustomerSatisfactionPage < CommonPage

  CUSTOMER_SATISFACTION_TEXT_XPATH = '//span[normalize-space(text())="Customer satisfaction"]'
  NPS_SCORE_DROP_DOWN_MENU_XPATH = '//select[@id="NPSScore"]'

  def check_elements
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{CUSTOMER_SATISFACTION_TEXT_XPATH}'")
  end

  def select_nps_score
    scroll_down_till_element("#{WEB_VIEW} xpath:'#{NPS_SCORE_DROP_DOWN_MENU_XPATH}'")
    touch ("#{WEB_VIEW} xpath:'#{NPS_SCORE_DROP_DOWN_MENU_XPATH}'")
    sleep 1
    touch("* marked:'9'")
    touch("* marked:'Done'")
  end
end