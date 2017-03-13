#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

require 'calabash-cucumber/core'
require 'calabash-cucumber/ibase'
require 'pry'

class CommonPage < Calabash::IBase

  GO_BACK_BUTTON_MARK = 'Back'

  NEXT_BUTTON_XPATH = '//button[normalize-space(text())="Next"]'

  WEB_VIEW = 'WKWebView'

  def tap_next
    touch "#{WEB_VIEW} xpath:'#{NEXT_BUTTON_XPATH}'"
  end

  def go_back_to_accounts
    sleep 5
    touch("* marked:'#{GO_BACK_BUTTON_MARK}'")
  end

  def check_and_accept_alert
    2.times do
      sleep 1
      alert = query "* marked:'OK'"
      unless alert.empty?
        touch "* marked:'OK'"
      end
      alert = query "* marked:'Allow'"
      unless alert.empty?
        touch "* marked:'Allow'"
      end
    end
  end

end