class DataCleaner

    def clen_price_goal(price_goal)
      price_goal.flatten.collect { |i| i.to_f }
    end
    def clean_menu_prices(menu_prices)
      menu_prices.collect!.with_index {|x, i| menu_prices << x[1].to_f }
    end

end
