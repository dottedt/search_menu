require 'get_data'

describe GetData do
  let(:menu) { described_class.new.data_type("spec/menu.txt") }


  it 'populates a price_goal' do
    expect(@price_goal).to eq(15.05)
  end



end


