class ReasonToDisputePage < CommonPage

  LOGO_TEXT = 'Dispute Transaction'

  PAID_BY_OTHER_MEANS_XPATH = '//label[@for="ReasonForDisputePaid by Other Means"]'

  def check_elements
    # wait_for_element_exists("com.pega.mobile.webview.HybridWebView xpath:'//label[@for=\"ReasonForDisputePaid by Other Means\"]'")
  end

  def choose_paid_by_other_means
    calabash_072_workaround
    touch "#{WEB_VIEW} xpath:'#{PAID_BY_OTHER_MEANS_XPATH}'"
  end
end