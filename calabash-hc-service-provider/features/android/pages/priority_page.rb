class PriorityPage < CommonPage

  PEGA_ICON_XPATH = '//img[@src="webwb/py-logo_1662150348.svg!!.svg"]'
  PRIORITY_TEXT_XPATH = '//label[@class="field-caption dataLabelForWrite" and @for="Priority"]'
  PRIORITY_DROP_DOWN_MENU_XPATH = '//select[@id="Priority"]'

  def check_elements
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PEGA_ICON_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PRIORITY_TEXT_XPATH}'")
    wait_till_element_appears("#{WEB_VIEW} xpath:'#{PRIORITY_DROP_DOWN_MENU_XPATH}'")
  end

  def choose_priority
    touch("#{WEB_VIEW} xpath:'#{PRIORITY_DROP_DOWN_MENU_XPATH}'")
    touch("* {text CONTAINS 'High'}")
  end
end