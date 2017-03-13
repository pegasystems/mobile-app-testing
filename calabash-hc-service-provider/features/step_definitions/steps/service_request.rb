Then "I am on Service Request page" do
  @page = ServiceRequestPage.new(self)
  @page.check_elements
end

When "I choose Name" do
  @page.choose_name
end

And "I provide Issue" do
  @page.provide_issue
end

And "I click Submit button" do
  @page.click_submit_button
end
