class ServicePage < CommonPage

  UPPER_PART_XPATH = '//*[@id="l1"]'
  PEGA_ICON_XPATH = '//img[@src="webwb/py-logo_1662150348.svg!!.svg"]'
  HAMBURGER_MENU_XPATH = '//a[@class="nav-toggle-one"]'
  MAIN_PART_XPATH = '//*[@id="l2"]'
  PLUS_ICON_XPATH = '//div[@class="content-item content-layout item-3 remove-top-spacing remove-bottom-spacing   flex flex-row "]'
  SERVICE_REQUEST_XPATH = '//span[@class="menu-item-title" and normalize-space(text())="Service Request"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{UPPER_PART_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PEGA_ICON_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{HAMBURGER_MENU_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{MAIN_PART_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PLUS_ICON_XPATH}'")
  end

  def press_plus_icon
    touch("#{WEB_VIEW} xpath:'#{PLUS_ICON_XPATH}'")
  end

  def choose_service_request
    touch("#{WEB_VIEW} xpath:'#{SERVICE_REQUEST_XPATH}'")
    sleep 2
  end
end