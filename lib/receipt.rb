#file: lib/receipt.rb

class Receipt

    def initialize(order)
        @order = order
    end

    def generate_receipt
        receipt_lines = []
        
        @order.selected_dishes.each do |dish, quantity|
            receipt_lines << "#{dish.name} x #{quantity} = £ #{dish.price * quantity}"
        end

        receipt_lines.join("\n")
    end
end