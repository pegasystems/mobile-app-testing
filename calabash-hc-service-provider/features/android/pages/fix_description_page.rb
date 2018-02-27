#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class FixDescriptionPage < CommonPage

  FIX_TEXT_XPATH = '//span[normalize-space(text())="Fix"]'
  FIX_DESCRIPTION_FORM_XPATH = '//textarea[@id="FixDescription"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{FIX_TEXT_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{FIX_DESCRIPTION_FORM_XPATH}'")
  end

  def provide_fix_description
    hide_soft_keyboard
    begin
      retries ||= 0
      enter_text("#{WEB_VIEW} xpath:'#{FIX_DESCRIPTION_FORM_XPATH}'", "Fixed")
    rescue
      retry if (retries += 1) < 3
    end
    hide_soft_keyboard
  end
end