#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class TransactionDatePage < CommonPage

  FORM_TITLE_XPATH = '//button[normalize-space(text())="Transaction date"]'

  CALENDAR_XPATH = '//input[@class="inactvDtTmTxtMobile"]'

  CALENDAR_DATE_PICKER_ID = 'animator'

  CALENDAR_ACCEPT_BUTTON_ID = 'button1'


  def check_elements
    query("#{WEB_VIEW} xpath:'#{FORM_TITLE_XPATH}'")
  end

  def open_calendar
    calabash_072_workaround
    touch "#{WEB_VIEW} xpath:'#{CALENDAR_XPATH}'"
  end

  def pick_a_date
    #Date is chosen by default as current date. Calendars on android versions differ.
    # touch "* id:'#{CALENDAR_DATE_PICKER_ID}', index:[0][0][1]"
  end

  def confirm_on_calendar
    touch "* id:'#{CALENDAR_ACCEPT_BUTTON_ID}'"
  end


end