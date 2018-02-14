#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class RecurringBillPage < CommonPage

  FORM_TITLE_XPATH = '//button[normalize-space(text())="Recurring bill"]'

  OPTION_NO_XPATH = '//label[@for="VerbalAgreementYesNoNo"]'


  def check_elements
    query("#{WEB_VIEW} xpath:'#{FORM_TITLE_XPATH}'")
  end

  def pick_option_no
    calabash_072_workaround
    touch "#{WEB_VIEW} xpath:'#{OPTION_NO_XPATH}'"
    calabash_072_workaround
  end

end