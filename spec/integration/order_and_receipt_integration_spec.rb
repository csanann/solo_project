#file: spec/intergration/order_and_receipt_integration_spec.rb

# file: spec/integration/order_and_receipt_integration_spec.rb

require 'dish'
require 'order'
require 'receipt'

RSpec.describe 'Order and Receipt' do
  let(:pizza_dish) { Dish.new("Pizza", 12) }
  let(:pasta_dish) { Dish.new("Pasta", 10) }
  let(:order) { Order.new }

  context 'when a customer orders a dish' do
    before do
      order.add_dish(pizza_dish, 2)
    end

    it 'adds the dish and quantity to the order' do
      expect(order.selected_dishes[pizza_dish]).to eq(2)
    end

    context 'when generating a receipt' do
      let(:receipt) { Receipt.new(order) }

      it 'generates an itemized receipt' do
        expect(receipt.generate_receipt).to include("Pizza x 2 = £ 24")
      end
    end
  end
end
