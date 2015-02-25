class DataCleaner

  def change_to_float(price)
    price.tr('$', '').to_f
  end

end
