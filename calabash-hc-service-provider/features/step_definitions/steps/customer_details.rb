#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

Then "I am on the Collect customer details page" do
  @page = CustomerDetailsPage.new(self)
  @page.check_elements
end

And "I provide name" do
  @page.provide_name
end

And "I provide phone number" do
  @page.provide_phone_number
end

