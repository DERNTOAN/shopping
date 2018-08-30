require_relative 'basket'
require_relative 'store'


basket = {
  "apples" => 0,
  "oranges" => 0,
  "bananas" => 0,
  "papayas" => 0
}

puts "Welcome to our store. These are our avalaible items:"
puts items_list

loop do
  # ask which product to buy
  puts "What do you want to buy? To quit type nothing and hit enter."
  product = gets.chomp.downcase

  # break loop
  break if product == ''

  if product_in_store?(product)
    add_to_basket(basket, product)
  else
    # otherwise show error
    puts "We don't have any #{product} in store, sorry!"
  end
end

puts 'Here is your order:'

puts basket_to_s(basket)

total = basket_total_price(basket, store_items)
puts "Total price: #{total}€"
