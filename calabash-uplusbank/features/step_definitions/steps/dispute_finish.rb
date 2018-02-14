#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

Then (/^I am on Dispute Transaction finish page$/) do
  @page = DisputeFinishPage.new(self)
  @page.check_elements
end

And (/^I see a success message$/) do
  @page.check_success_message
end

When (/^I tap Finish$/) do
  @page.click_finish_button
end