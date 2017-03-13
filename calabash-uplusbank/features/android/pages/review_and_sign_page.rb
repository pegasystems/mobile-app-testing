#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

class ReviewAndSignPage < CommonPage

  FORM_TITLE_XPATH = '//button[normalize-space(text())="Review & Sign"]'

  SIGNATURE_CANVAS_XPATH = '//div[@class="signWrapper signature-pad-style"]'

  def check_elements
    query("#{WEB_VIEW} xpath:'#{FORM_TITLE_XPATH}'")
  end

  def sign_signature
    calabash_072_workaround
    pan("#{WEB_VIEW} xpath:'#{SIGNATURE_CANVAS_XPATH}'", :right, from: {x: 10, y:50}, to: {x: 200, y: 50})
  end

end