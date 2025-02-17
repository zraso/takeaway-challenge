require 'takeaway'

describe Takeaway do

  let (:order) { double :order }

  subject(:takeaway) { described_class.new }

  it 'displays a menu' do
    expect(takeaway.menu).to eq "Chicken"=>5, "Fish"=>7, "Lamb"=>6, "Vegan"=>5
  end

  it 'can forward an order' do
    allow(order).to receive(:place) {[{dish_selection: "Chicken", quantity: 2}]}
    takeaway.select_order("Chicken", 2)
  end
  #
  it 'can check the total' do
    expect(takeaway.check_bill?).to eq true
  end

end
