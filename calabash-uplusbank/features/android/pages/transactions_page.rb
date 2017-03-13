#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class TransactionsPage < CommonPage

  LOGO_TEXT = 'U+ Bank'
  BALANCE_MAIN_ID = 'currencyMain'
  MAKE_A_PAYMENT_BUTTON_ID = 'makeAPayment'
  CREDIT_CARD_ACTIVITY_HEAD_ID = 'sectionHeader'
  CREDIT_CARD_ACTIVITY_HEAD_TEXT = 'CREDIT CARD ACTIVITY'

  TRANSACTIONS_ID = 'transaction'
  TRANSACTIONS_DATE_ID = 'date'

  def check_elements
    wait_for_element_exists("all * id:'#{GO_BACK_BUTTON_ID}'")
    wait_for_element_exists("all * id:'#{LOGO_ID}', text:'#{LOGO_TEXT}'")
    wait_for_element_exists("all * id:'#{BALANCE_MAIN_ID}'")
    wait_for_element_exists("all * id:'#{MAKE_A_PAYMENT_BUTTON_ID}'")
    wait_for_element_exists("all * id:'#{CREDIT_CARD_ACTIVITY_HEAD_ID}', text:'#{CREDIT_CARD_ACTIVITY_HEAD_TEXT}'")
  end

  def get_first_transaction
    element = query("* id:'#{TRANSACTIONS_DATE_ID}'").first
    while element == nil
      flick_up
      element = query("* id:'#{TRANSACTIONS_DATE_ID}'").first
    end
    element
  end

  def tap_on_first_transtaction
    element = get_first_transaction
    touch element
  end

end