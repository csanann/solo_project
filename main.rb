#file: main.rb

require_relative 'lib/dish.rb'
require_relative 'lib/order.rb'
require_relative 'lib/receipt.rb'
require_relative 'lib/text_message_sender.rb'


dishes = [
    Dish.new("Pizza", 12),
    Dish.new("Pasta", 10),
    Dish.new("Salad", 8)
]
puts "Available dishes: "
dishes.each_with_index do |dish, index|
    puts "#{index + 1}. #{dish.name} - £#{dish.price}"
end

class Dish
    attr_reader :name, :price
    #creates read-only access to @name and @price instance variables
    def initialize(name, price)
        @name = name
        @price = price
    end   
end

#create a new order instance and let the customer select dishes
order = Order.new

loop do
    puts "Enter the dish number to order or type 'done' to finish: "
    input = gets.chomp

    break if input.downcase == "done"

    dish_index = input.to_i - 1

    if dish_index >= 0 && dish_index < dishes.length
        selected_dish = dishes[dish_index]
        puts "Enter the quantity for #{selected_dish.name}: "
        quantity = gets.chomp.to_i
        order.add_dish(selected_dish, quantity)
    else
        puts "Invalid dish number. Please try again."
    end
end

Receipt.generate(order)
delivery_time = (Time.new + 60 * 30).strftime("%H:%M")
#replace with the customer number
phone_number = '07586824326'
TextMessageSender.send_confirmation(phone_number, delivery_time)
