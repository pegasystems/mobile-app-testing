#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class PriorityPage < CommonPage

  PRIORITY_TEXT_XPATH = '//label[@class="field-caption dataLabelForWrite" and @for="Priority"]'
  PRIORITY_DROP_DOWN_MENU_XPATH = '//select[@id="Priority"]'

  def check_elements
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{PRIORITY_TEXT_XPATH}'")
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{PRIORITY_DROP_DOWN_MENU_XPATH}'")
  end

  def choose_priority
    touch("#{WEB_VIEW} xpath:'#{PRIORITY_DROP_DOWN_MENU_XPATH}'")
    sleep 1 #opening picker
    touch("* marked:'High'")
    touch("* marked:'Done'")
  end
end