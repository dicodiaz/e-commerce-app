require 'rails_helper'

RSpec.describe 'cosmetics/index', type: :view do
  before(:each) do
    assign(:cosmetics, [
             Cosmetic.create!(
               name: 'Name',
               description: 'MyText',
               brand: nil,
               price: '9.99',
               quantity: 2,
               discount: nil
             ),
             Cosmetic.create!(
               name: 'Name',
               description: 'MyText',
               brand: nil,
               price: '9.99',
               quantity: 2,
               discount: nil
             )
           ])
  end

  it 'renders a list of cosmetics' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('9.99'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
