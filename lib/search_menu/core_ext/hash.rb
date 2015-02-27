require 'search_menu'

class Hash
  def search_menu
    SearchMenu.new.hash_input(self)
  end
end
