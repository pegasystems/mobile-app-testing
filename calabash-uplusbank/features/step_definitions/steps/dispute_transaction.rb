When (/^I am on Getting started page$/) do
  @page = DisputeTransactionPage.new(self)
  @page.check_elements
end

When (/^I tap on Get started button$/) do
  @page.tap_on_get_started_button
end