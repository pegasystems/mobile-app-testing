#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class DisputeFinishPage < CommonPage

  CASE_ID_LABEL_XPATH = '//div[normalize-space(text())="Your Case ID is:"]'

  SUCCES_MESSAGE_XPATH = '//div[normalize-space(text())="Your dispute is being worked by our dispute team!"]'

  FINISH_BUTTON_XPATH = '//button[normalize-space(text())="Finish"]'


  def check_elements
    query("#{WEB_VIEW} xpath:'#{CASE_ID_LABEL_XPATH}'")
  end

  def check_success_message
    query("#{WEB_VIEW} xpath:'#{SUCCES_MESSAGE_XPATH}'")
  end

  def click_finish_button
    sleep 2
    touch "#{WEB_VIEW} xpath:'#{FINISH_BUTTON_XPATH}'"
  end

end