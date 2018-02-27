#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class ServicePage < CommonPage

  UPPER_PART_XPATH = '//*[@id="l1"]'
  MAIN_PART_XPATH = '//*[@id="l2"]'
  PLUS_ICON_XPATH = '//a[@data-test-id="2014100609491604293426"]'
  SERVICE_REQUEST_XPATH = '//span[@class="menu-item-title" and normalize-space(text())="Service Request"]'

  def check_elements
    wait_workaround
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{UPPER_PART_XPATH}'")
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