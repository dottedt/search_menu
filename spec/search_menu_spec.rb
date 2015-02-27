require 'spec_helper'
require 'search_menu'

describe SearchMenu do
  let(:menu) {SearchMenu.new('spec/eat.txt')}

  it 'get the price goal from the file' do
    expect(menu.price_goal).to eq(["10.00"])
  end

  it 'get menu items from the file' do
    expect(menu.menu_items[0]).to eq({menu_item:'french fries', item_cost:'2.75'})
  end
end

# For the life of me I can't quite figure out how to test the output. Skipping Hash as well until I find a solution.
# describe Array do
#   subject { [["$10.00"], ["mixed fruit", "$2.15"], ["french fries", "$2.75"], ["side salad", "$3.35"], ["hot wings", "$3.55"], ["mozzarella sticks", "$4.20"], ["sampler plate", "$5.80"]] }

#   describe 'search_menu' do
#     let(:output) { subject.search_menu }

#     it 'delegates to SearchMenu#get_file_or_data' do

#         subject.expect_any_instance_of(SearchMenu).to receive(:process).with(item).once

#       output
#     end

#     it 'returns an array of strings' do
#       expect(output).to be_an_instance_of(Array)
#     end
#   end
# end


describe SearchMenu, '#find_target_price' do

  let(:eat) { SearchMenu.new('spec/eat.txt') }
  let(:starve) { SearchMenu.new('spec/starve.txt') }
  let(:found_a_meal) { eat.winning_combo }
  let(:go_someplace_else) { starve.winning_combo }

  it 'found a meal' do
    expect(found_a_meal).to include([
      {menu_item: 'mozzarella sticks', item_cost: "4.20"},
      {menu_item: 'sampler plate', item_cost: "5.80"}
    ])
  end

  it "did not find a meal" do
    expect(go_someplace_else.count).to eq 0
  end
end



