class ReviewAndSignPage < CommonPage

  FORM_TITLE_XPATH = '//button[normalize-space(text())="Review & Sign"]'

  SIGNATURE_CANVAS_XPATH = '//div[@class="signWrapper signature-pad-style"]'

  def check_elements
    check_and_accept_alert
    query("#{WEB_VIEW} xpath:'#{FORM_TITLE_XPATH}'")
  end

  def sign_signature
    sleep 2
    swipe :right, :query => "#{WEB_VIEW} xpath:'#{SIGNATURE_CANVAS_XPATH}'", :offset => {:x => 10, :y => 10}
  end

end