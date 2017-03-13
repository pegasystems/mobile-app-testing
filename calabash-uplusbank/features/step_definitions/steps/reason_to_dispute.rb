#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

Then (/^I am on Reason for Dispute page$/) do
  @page = ReasonToDisputePage.new(self)
  @page.check_elements
end

When (/^I choose Paid by Other Means and tap Next$/) do
  @page.choose_paid_by_other_means
  @page.tap_next
end