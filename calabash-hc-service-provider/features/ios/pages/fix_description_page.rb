#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class FixDescriptionPage < CommonPage

  FIX_TEXT_XPATH = '//span[normalize-space(text())="Fix"]'
  FIX_DESCRIPTION_FORM_XPATH = '//textarea[@id="FixDescription"]'

  def check_elements
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{FIX_TEXT_XPATH}'")
    wait_for_element_exists("#{WEB_VIEW} xpath:'#{FIX_DESCRIPTION_FORM_XPATH}'")
  end

  def provide_fix_description
    enter_text("#{WEB_VIEW} xpath:'#{FIX_DESCRIPTION_FORM_XPATH}'", "Fixed")
    touch("* marked:'Done'")
  end
end