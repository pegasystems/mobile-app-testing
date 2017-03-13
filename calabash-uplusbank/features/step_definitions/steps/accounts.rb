#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

Then (/^I am on the Accounts page$/) do
  @page = AccountsPage.new(self)
  @page.check_elements
end

When (/^I tap on the first item in Credit Cards section$/) do
  @page.tap_on_first_element_on_credit_cards_section
end

And (/^I go back to Accounts page$/) do
  @page.go_back_to_accounts
  @page = AccountsPage.new(self)
  @page.check_elements
end

And (/^I Sign Off$/) do
  @page.sign_off
end