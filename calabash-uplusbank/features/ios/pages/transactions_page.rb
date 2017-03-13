#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class TransactionsPage < CommonPage

  LOGO_TEXT = 'UPlus® Dividend World'

  MAKE_A_PAYMENT_BUTTON_TEXT = 'Make a Payment'

  TRANSACTIONS_FIRST_DATE_MARK = 'Monday, May 30, 2016'

  def check_elements
    wait_for_element_exists("all * marked:'#{GO_BACK_BUTTON_MARK}'")
    wait_for_element_exists("all * text:'#{LOGO_TEXT}'")
    wait_for_element_exists("all * text:'#{MAKE_A_PAYMENT_BUTTON_TEXT}'")
    wait_for_element_exists("all * marked:'#{TRANSACTIONS_FIRST_DATE_MARK}'")
  end

  def get_first_transaction
    element = query("* marked:'#{TRANSACTIONS_FIRST_DATE_MARK}'")
    while element == nil
      swipe :up, :query => "*", :offset => {:x => 100, :y => 200}
      element = query("* marked:'#{TRANSACTIONS_FIRST_DATE_MARK}'")
    end
    element
  end

  def tap_on_first_transtaction
    element = get_first_transaction
    sleep 2
    touch element
  end

end