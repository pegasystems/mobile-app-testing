class DisputeAmountPage < CommonPage

  FORM_TITLE_XPATH = '//button[normalize-space(text())="Dispute amount"]'


  def check_elements
    check_and_accept_alert
    query("#{WEB_VIEW} xpath:'#{FORM_TITLE_XPATH}'")
    sleep 2
  end


end