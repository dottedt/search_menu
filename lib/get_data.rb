class get_data
  def data_type(input)
    menu_type = input
    case
    when menu_type.kind_of?(Array)
      input.each_with_index do |menu_item, i|
        self.price_goal = menu_item[0] if i == 0

      end

    when menu_type.kind_of?(Hash)
      input.each_with_index do |menu_item, i|
        self.price_goal = menu_item[0] if i == 0
      end

    else
      File.open(input).each_with_index do |menu_item, i|
        self.price_goal = menu_item[0] if i == 0
      end
    end
  end
end
