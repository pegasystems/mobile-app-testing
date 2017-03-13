When (/^I am on Transactions Page$/) do
  @page = TransactionsPage.new(self)
  @page.check_elements
end

When (/^I tap on first item in Credit Card Activity section$/) do
  @page.tap_on_first_transtaction
end