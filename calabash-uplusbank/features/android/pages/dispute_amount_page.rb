class DisputeAmountPage < CommonPage

  FORM_TITLE_XPATH = '//button[normalize-space(text())="Dispute amount"]'

  def check_elements
    query("#{WEB_VIEW} xpath:'#{FORM_TITLE_XPATH}'")
    calabash_072_workaround
  end


end