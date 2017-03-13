class ServiceRequestPage < CommonPage

  UPPER_PART_XPATH = '//*[@id="l1"]'
  PEGA_ICON_XPATH = '//img[@src="webwb/py-logo_1662150348.svg!!.svg"]'
  MAIN_PART_XPATH = '//*[@id="l2"]'
  CREATE_SERVICE_REQUEST_TEXT_XPATH = '//span[normalize-space(text())="Create service request"]'
  SELECT_NAME_XPATH = '//select["@id=pyGUID"]'
  ISSUE_FORM_XPATH = '//input[@id="Issue"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PEGA_ICON_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{UPPER_PART_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{MAIN_PART_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{CREATE_SERVICE_REQUEST_TEXT_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{SELECT_NAME_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{ISSUE_FORM_XPATH}'")
  end

  def choose_name
    touch("#{WEB_VIEW} xpath:'#{SELECT_NAME_XPATH}'")
    touch("* {text CONTAINS 'Apple Watch Sport'}")
  end

  def provide_issue
    hide_soft_keyboard
    enter_text("#{WEB_VIEW} xpath:'#{ISSUE_FORM_XPATH}'", "Does not work")
    hide_soft_keyboard
  end
end
