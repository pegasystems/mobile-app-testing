Then "I am on priority page" do
  @page = PriorityPage.new(self)
  @page.check_elements
end

When "I choose priority" do
  @page.choose_priority
end
