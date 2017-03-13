class ResolvedCompletedPage < CommonPage

  UPPER_PART_XPATH = '//*[@id="l1"]'
  HAMBURGER_MENU_XPATH = '//a[@class="nav-toggle-one"]'
  MAIN_PART_XPATH = '//*[@id="l2"]'
  RESOLVED_COMPLETED_INFORMATION_TEXT_XPATH = '//span[normalize-space(text())="Thank you! This case is Resolved-Completed"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{UPPER_PART_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{HAMBURGER_MENU_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{MAIN_PART_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{RESOLVED_COMPLETED_INFORMATION_TEXT_XPATH}'")
  end
end