require "search_menu/version"
require "data_cleaner"

class SearchMenu
  attr_accessor :file, :price_goal, :menu_items, :combinations

 def initialize(input = nil)
    @price_goal = 0
    @menu_items = []
    @file = ""
    self.get_data(input) if input
  end
end
