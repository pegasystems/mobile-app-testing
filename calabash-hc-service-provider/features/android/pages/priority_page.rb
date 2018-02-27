#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class PriorityPage < CommonPage

  PRIORITY_TEXT_XPATH = '//label[@class="field-caption dataLabelForWrite" and @for="Priority"]'
  PRIORITY_DROP_DOWN_MENU_XPATH = '//select[@id="Priority"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PRIORITY_TEXT_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PRIORITY_DROP_DOWN_MENU_XPATH}'")
  end

  def choose_priority
    touch("#{WEB_VIEW} xpath:'#{PRIORITY_DROP_DOWN_MENU_XPATH}'")
    touch("* {text CONTAINS 'High'}")
  end
end