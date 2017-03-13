require_relative 'common_page'

class AccountsPage < CommonPage

  ACC_DESCRIPTION_FOR_CREDIT_CARDS_TEXT = 'Current balance'

  LOGO_TEXT = 'U+ Bank'
  SIGN_OFF_MARK = 'Sign Off'


  def check_elements
    wait_for_element_exists("* text:'#{LOGO_TEXT}'")
    wait_for_element_exists("* text:'#{SIGN_OFF_MARK}'")
  end

  def find_first_element_on_credit_cards_section
    element = query("* text:'#{ACC_DESCRIPTION_FOR_CREDIT_CARDS_TEXT}'").first
    while element == nil
      swipe :up, :query => "*", :offset => {:x => 100, :y => 200}
      element = query("* text:'#{ACC_DESCRIPTION_FOR_CREDIT_CARDS_TEXT}'").first
    end
    element
  end

  def tap_on_first_element_on_credit_cards_section
    element = find_first_element_on_credit_cards_section
    touch element
  end

  def sign_off
    sleep 2
    touch "* marked:'#{SIGN_OFF_MARK}'"
  end

end