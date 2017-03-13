class TransactionDatePage < CommonPage

  FORM_TITLE_XPATH = '//button[normalize-space(text())="Transaction date"]'

  CALENDAR_XPATH = '//input[@class="inactvDtTmTxtMobile"]'

  CALENDAR_DONE_BUTTON_MARK = 'Done'


  def check_elements
    check_and_accept_alert
    query("#{WEB_VIEW} xpath:'#{FORM_TITLE_XPATH}'")
  end

  def open_calendar
    sleep 2
    touch "#{WEB_VIEW} xpath:'#{CALENDAR_XPATH}'"
  end

  def pick_a_date
    #Date is chosen by default as current date. Calendars on android versions differ.
  end

  def confirm_on_calendar
    sleep 2
    touch "* marked:'#{CALENDAR_DONE_BUTTON_MARK}'"
  end


end