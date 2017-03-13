#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

Given "the app has launched" do
  @page = LoginPage.new(self)
end

And "I am on the Log In page" do
  @page = LoginPage.new(self)
  @page.check_if_main_logo_exists
  @page.check_if_login_form_exists
  @page.check_if_login_button_exists
end

When "I fill in credentials" do
  @page.fill_in_credentials
end

And "I press Log In button" do
  @page.press_log_in_button
end

