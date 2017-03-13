class RecurringBillPage < CommonPage

  FORM_TITLE_XPATH = '//button[normalize-space(text())="Recurring bill"]'

  OPTION_NO_XPATH = '//label[@for="VerbalAgreementYesNoNo"]'


  def check_elements
    check_and_accept_alert
    query("#{WEB_VIEW} xpath:'#{FORM_TITLE_XPATH}'")
  end

  def pick_option_no
    sleep 2
    touch "#{WEB_VIEW} xpath:'#{OPTION_NO_XPATH}'"
  end

end