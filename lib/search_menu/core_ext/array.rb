require 'search_menu'

class Array
  def search_menu
    SearchMenu.new.find_target_price(self)
  end
end
