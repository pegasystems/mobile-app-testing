require_relative 'common_page'

class AccountsPage < CommonPage

  ACC_DESCRIPTION_FOR_CREDIT_CARDS = 'Current balance'

  SIGN_OFF_ID = 'rightButton'


  def check_elements
    wait_for_element_exists("all * id:'#{LOGO_ID}'")
    wait_for_element_exists("all * id:'#{BUTTONS_TAB_ID}'")
  end

  def find_first_element_on_credit_cards_section
    element = query("* text:'#{ACC_DESCRIPTION_FOR_CREDIT_CARDS}'").first
    while element == nil
      flick_up
      element = query("* text:'#{ACC_DESCRIPTION_FOR_CREDIT_CARDS}'").first
    end
    element
  end

  def tap_on_first_element_on_credit_cards_section
    element = find_first_element_on_credit_cards_section
    touch element
  end

  def sign_off
    touch "* id:'#{SIGN_OFF_ID}'"
  end

end