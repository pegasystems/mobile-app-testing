Then (/^I am on Review & Sign page$/) do
  @page = ReviewAndSignPage.new(self)
  @page.check_elements
end

When (/^I sign the signature tap Next$/) do
  @page.sign_signature
  @page.tap_next
end
