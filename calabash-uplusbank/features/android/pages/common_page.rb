require 'calabash-cucumber/core'
require 'calabash-android'

class CommonPage < Calabash::ABase
  WEB_VIEW = 'com.pega.mobile.webview.HybridWebView'

  GO_BACK_BUTTON_ID = 'leftButton'
  LOGO_ID = 'title'
  BUTTONS_TAB_ID = 'sliding_tabs'

  NEXT_BUTTON_XPATH = '//button[normalize-space(text())="Next"]'


  #https://github.com/calabash/calabash-android/issues/706
  def calabash_072_workaround
    sleep 3
  end

  def tap_next
    touch "com.pega.mobile.webview.HybridWebView xpath:'#{NEXT_BUTTON_XPATH}'"
  end

  def go_back_to_accounts
    touch("* id:'#{GO_BACK_BUTTON_ID}'")
    touch("* id:'#{GO_BACK_BUTTON_ID}'")
    touch("* id:'#{GO_BACK_BUTTON_ID}'")
  end

end