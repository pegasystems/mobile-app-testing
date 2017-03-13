Then "I am on the Service page" do
  @page = ServicePage.new(self)
  @page.check_elements
end

When "I press hamburger menu" do
  @page.press_hamburger_menu
end

And "I press Log Off" do
  @page.press_log_off
end

When "I press plus icon" do
  @page.press_plus_icon
end

And "I choose Service Request" do
  @page.choose_service_request
end

