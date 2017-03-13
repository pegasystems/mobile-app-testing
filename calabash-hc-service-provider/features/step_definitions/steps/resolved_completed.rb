#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

Then "I am informed that case is Resolved-Completed" do
  @page = ResolvedCompletedPage.new(self)
  @page.check_elements
end
