#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class DisputeTransactionPage < CommonPage

  LOGO_TEXT = 'Dispute Transaction'
  GET_STARTED_BUTTON_ID = 'button'
  GET_STARTED_BUTTON_TEXT = 'Get started'


  def check_elements
    wait_for_element_exists("all * id:'#{GO_BACK_BUTTON_ID}'")
    wait_for_element_exists("all * id:'#{LOGO_ID}', text:'#{LOGO_TEXT}'")
    wait_for_element_exists("all * id:'#{GET_STARTED_BUTTON_ID}', text:'#{GET_STARTED_BUTTON_TEXT}'")
  end


  def tap_on_get_started_button
    button = query("* id:'#{GET_STARTED_BUTTON_ID}', text:'#{GET_STARTED_BUTTON_TEXT}'").last
    touch button
  end


end