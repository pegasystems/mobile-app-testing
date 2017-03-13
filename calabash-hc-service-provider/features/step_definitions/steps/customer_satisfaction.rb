Then "I am on customer satisfaction page" do
  @page = CustomerSatisfactionPage.new(self)
  @page.check_elements
end

When "I select NPS score" do
  @page.select_nps_score
end
