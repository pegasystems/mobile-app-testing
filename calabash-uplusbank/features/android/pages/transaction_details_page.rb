class TransactionDetailsPage < CommonPage

  LOGO_TEXT = 'Transaction Details'
  DISPUTE_TRANSACTION_BUTTON_ID = 'button'
  DISPUTE_TRANSACTION_BUTTON_TEXT = 'Dispute transaction'


  def check_elements
    wait_for_element_exists("all * id:'#{GO_BACK_BUTTON_ID}'")
    wait_for_element_exists("all * id:'#{LOGO_ID}', text:'#{LOGO_TEXT}'")
    wait_for_element_exists("all * id:'#{DISPUTE_TRANSACTION_BUTTON_ID}', text:'#{DISPUTE_TRANSACTION_BUTTON_TEXT}'")
  end


  def tap_on_dispute_transaction_button
    touch "* id:'#{DISPUTE_TRANSACTION_BUTTON_ID}', text:'#{DISPUTE_TRANSACTION_BUTTON_TEXT}'"
  end


end