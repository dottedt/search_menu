require 'data_cleaner'

describe DataCleaner do
  let(:type_of_menu) { described_class.new }
  let(:cents)   { '$0.60'  }
  let(:dollars) { '$6.60'  }
  let(:tens)    { '$15.55' }

  it 'parses the price into a ruby Fixnum' do
      expect(type_of_menu.change_to_float(cents)).to eq(0.60)
      expect(type_of_menu.change_to_float(dollars)).to eq(6.6)
      expect(type_of_menu.change_to_float(tens)).to eq(15.55)
  end


end
