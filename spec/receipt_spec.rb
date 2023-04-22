#file: spec/receipt_spec.rb

require 'receipt'
require 'order'
require 'dish'

RSpec.describe Receipt do
    let(:dish) { Dish.new("Pizza", 12) }
    let(:order) { Order.new }
    let(:receipt) { Receipt.new(order) }
    
    describe "generate an itemized receipt" do 
        it "returns an itemized receipt" do
            order.add_dish(dish, 2)
            expect(receipt.generate_receipt).to include("Pizza")
        end
    end
end