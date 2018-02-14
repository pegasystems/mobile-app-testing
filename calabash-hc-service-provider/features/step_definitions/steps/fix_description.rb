#  
# Copyright (c) 2017 and Confidential to Pegasystems Inc. All rights reserved.  
#  

Then "I am on fix description page" do
  @page = FixDescriptionPage.new(self)
end

When "I provide fix description" do
  @page.provide_fix_description
end


