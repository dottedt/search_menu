require "search_menu/version"
require "data_cleaner"

class SearchMenu

  attr_accessor :file_name, :price_goal, :menu_items, :winning_combo

  def initialize(input = nil)
    @price_goal = ""
    @menu_items = []
    @file = ""
    @winning_combo = []
    get_data(input) if input
  end

  def get_data(input)
    data = File.read(input).scan(/[,$]+(\d+\.\d+)|(.*\b)[,$]+(\d+\.\d+)/).each{ |scn| scn.compact! }
    @file = input
    @price_goal = data[0]
    @menu_items = menu_to_hash(data[2, data.size])
    find_target_price
  end
  # superfluous for now.  perhaps a refactor
  # def price_goal_to_number(price_goal)
  #   price_goal.flatten.collect { |i| i.to_f }
  # end
  def menu_to_hash(menu_prices)
    menu_prices.map { |menu_item, item_cost| {:menu_item=> menu_item, :item_cost => item_cost} }
  end

  def find_target_price
    1.upto(@menu_items.length).each{ | i | @menu_items.combination(i).to_a.each { |j|
        @winning_combo << j if j.map{|x| x[:item_cost].to_f}.inject(:+) == @price_goal[0].to_f
        }
      }
    eat_or_starve
  end

  def eat_or_starve
    puts("#{@file_name} Results\n\n")
    @winning_combo ? p(@winning_combo) : (puts "Sorry, there are no combination of dishes that will be equal in cost to your target price")
  end

end
