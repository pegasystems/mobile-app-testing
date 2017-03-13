#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class CustomerSatisfactionPage < CommonPage

  PEGA_ICON_XPATH = '//img[@src="webwb/py-logo_1662150348.svg!!.svg"]'
  CUSTOMER_SATISFACTION_TEXT_XPATH = '//span[normalize-space(text())="Customer satisfaction"]'
  NPS_SCORE_DROP_DOWN_MENU_XPATH = '//select[@id="NPSScore"]'

  def check_elements
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{PEGA_ICON_XPATH}'")
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