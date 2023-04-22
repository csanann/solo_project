#file: spec/dish_spec.rb

require 'dish'

RSpec.describe Dish do
    let(:dish) { Dish.new("Pizza", 12) }

    it "has a name" do
        expect(dish.name).to eq("Pizza")
    end

    it "has a price" do
        expect(dish.price).to eq(12)
    end
end