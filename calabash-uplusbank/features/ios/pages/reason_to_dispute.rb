#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class ReasonToDisputePage < CommonPage

  PAID_BY_OTHER_MEANS_XPATH = '//label[@for="ReasonForDisputePaid by Other Means"]'


  def check_elements
    check_and_accept_alert
    wait_for_element_exists("#{WEB_VIEW} xpath:'//label[@for=\"ReasonForDisputePaid by Other Means\"]'")
  end

  def choose_paid_by_other_means
    touch "#{WEB_VIEW} xpath:'#{PAID_BY_OTHER_MEANS_XPATH}'"
  end
end