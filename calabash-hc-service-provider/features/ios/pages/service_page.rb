#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class ServicePage < CommonPage

  UPPER_PART_XPATH = '//*[@id="l1"]'
  PEGA_ICON_XPATH = '//img[@src="webwb/py-logo_1662150348.svg!!.svg"]'
  MAIN_PART_XPATH = '//*[@id="l2"]'
  PLUS_ICON_XPATH = '//div[@class="content-item content-layout item-3 remove-top-spacing remove-bottom-spacing   flex flex-row "]'
  SERVICE_REQUEST_XPATH = '//span[@class="menu-item-title" and normalize-space(text())="Service Request"]'

  def check_elements
    wait_workaround
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{UPPER_PART_XPATH}'")
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{PEGA_ICON_XPATH}'")
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{HAMBURGER_MENU_XPATH}'")
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{MAIN_PART_XPATH}'")
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{PLUS_ICON_XPATH}'")
  end

  def press_plus_icon
    touch("#{WEB_VIEW} xpath:'#{PLUS_ICON_XPATH}'")
  end

  def choose_service_request
    wait_workaround
    touch("#{WEB_VIEW} xpath:'#{SERVICE_REQUEST_XPATH}'")
    sleep 5
  end
end