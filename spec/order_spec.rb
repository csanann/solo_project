#file: spec/order_spec.rb

require 'order'
require 'dish'

RSpec.describe Order do
    let(:order) { Order.new }
    let(:dish) { Dish.new("Pizza", 12) }

    describe "can add dishes with quantities" do
        it "adds a dish with a quantity" do
            order.add_dish(dish, 2)
            expect(order.selected_dishes[dish]).to eq (2)
        end
    end
end