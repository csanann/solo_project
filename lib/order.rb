#file: lib/order.rb

class Order
    #read+write access to the instance variable @selcted_dishes
    attr_reader :selected_dishes

    def initialize
        #creat an empty hash
        @selected_dishes = {}
    end
    #add_dish method takes 2 argument, dish and quantity and adds them as a key-value pair to @selected_dishes
    def add_dish(dish, quantity)
        #adds the given dish and quantity to the @selected_dishes hash
        @selected_dishes[dish] = quantity
    end
end