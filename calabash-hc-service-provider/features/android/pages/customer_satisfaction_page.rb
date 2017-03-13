class CustomerSatisfactionPage < CommonPage

  PEGA_ICON_XPATH = '//img[@src="webwb/py-logo_1662150348.svg!!.svg"]'
  CUSTOMER_SATISFACTION_TEXT_XPATH = '//span[normalize-space(text())="Customer satisfaction"]'
  NPS_SCORE_DROP_DOWN_MENU_XPATH = '//select[@id="NPSScore"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PEGA_ICON_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{CUSTOMER_SATISFACTION_TEXT_XPATH}'")
  end

  def select_nps_score
    touch scroll_down_till_element("#{WEB_VIEW} xpath:'#{NPS_SCORE_DROP_DOWN_MENU_XPATH}'")
    touch("* {text CONTAINS '9'}")
  end
end