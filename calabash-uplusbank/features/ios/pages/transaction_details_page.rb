class TransactionDetailsPage < CommonPage

  LOGO_TEXT = 'Transaction Details'
  DISPUTE_TRANSACTION_BUTTON_TEXT = 'Dispute transaction'


  def check_elements
    wait_for_element_exists("all * marked:'#{GO_BACK_BUTTON_MARK}'")
    wait_for_element_exists("all * text:'#{LOGO_TEXT}'")
    wait_for_element_exists("all * text:'#{DISPUTE_TRANSACTION_BUTTON_TEXT}'")
  end


  def tap_on_dispute_transaction_button
    sleep 2
    touch "* text:'#{DISPUTE_TRANSACTION_BUTTON_TEXT}'"
  end


end