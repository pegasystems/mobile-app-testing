#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class ServicePage < CommonPage

  UPPER_PART_XPATH = '//*[@id="l1"]'
  HAMBURGER_MENU_XPATH = '//a[@class="nav-toggle-one"]'
  MAIN_PART_XPATH = '//*[@id="l2"]'
  PLUS_ICON_XPATH = '//a[@data-test-id="2014100609491604293426"]'
  SERVICE_REQUEST_XPATH = '//span[@class="menu-item-title" and normalize-space(text())="Service Request"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{UPPER_PART_XPATH}'")
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