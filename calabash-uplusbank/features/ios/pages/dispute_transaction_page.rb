class DisputeTransactionPage < CommonPage

  LOGO_MARK = 'Dispute transaction'
  GET_STARTED_BUTTON_ID = 'UIButton'
  GET_STARTED_BUTTON_MARK = 'Get Started'


  def check_elements
    wait_for_element_exists("all * marked:'#{GO_BACK_BUTTON_MARK}'")
    wait_for_element_exists("all * marked:'#{LOGO_MARK}'")
    wait_for_element_exists("all * #{GET_STARTED_BUTTON_ID} marked:'#{GET_STARTED_BUTTON_MARK}'")
  end


  def tap_on_get_started_button
    button = query("* #{GET_STARTED_BUTTON_ID} marked:'#{GET_STARTED_BUTTON_MARK}'")
    sleep 2
    touch button
  end


end