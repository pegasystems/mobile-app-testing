Then "I am informed that case is Resolved-Completed" do
  @page = ResolvedCompletedPage.new(self)
  @page.check_elements
end
