def store_items
  items = {
    "apples" => 0.25,
    "oranges" => 0.3,
    "bananas" => 0.15,
    "papayas" => 0.5
  }
  return items
end

def product_in_store?(product)
  store_items.key?(product)
end

def price_of_product(product)
  store_items[product] if product_in_store?(product)
end

def items_list
  item_list = ""
  store_items.each do |key, value|
    item_list += "- #{key.capitalize}: #{value}€\n"
  end
  return item_list
end
