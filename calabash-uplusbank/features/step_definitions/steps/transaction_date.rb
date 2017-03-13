Then (/^I am on Transaction date page$/) do
  @page = TransactionDatePage.new(self)
  @page.check_elements
end

When (/^I tap on calendar icon$/) do
  @page.open_calendar
end

Then (/^Calendar is opened$/) do
end

When (/^I pick date and confirm and tap Next$/) do
  @page.pick_a_date
  @page.confirm_on_calendar
  @page.tap_next
end