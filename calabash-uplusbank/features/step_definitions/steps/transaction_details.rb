When (/^I am on Transaction Details page$/) do
  @page = TransactionDetailsPage.new(self)
  @page.check_elements
end

When (/^I tap Dispute Transaction button$/) do
  @page.tap_on_dispute_transaction_button
end