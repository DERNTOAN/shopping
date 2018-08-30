def add_to_basket(basket, product)
  basket[product] += 1
end

def basket_to_s(basket)
  basket_list = ""
  basket.each do |key, value|
    if value > 0
      basket_list += "- #{key.capitalize}: #{value}\n"
    end
  end
  return basket_list
end

def basket_total_price(basket, store_items)
  total_price = 0
  basket.each do |key, value|
    if key === "papayas" && value % 3 === 0
      total_price += value * 0.5 - ((value / 3) * 0.5)
    else
      total_price += store_items[key] * value
    end
  end
  total_price
end
