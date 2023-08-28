require 'rails_helper'

RSpec.describe 'discounts/index', type: :view do
  before(:each) do
    assign(:discounts, [
             Discount.create!(
               name: 'Name',
               description: 'MyText',
               percent: '9.99',
               active: false
             ),
             Discount.create!(
               name: 'Name',
               description: 'MyText',
               percent: '9.99',
               active: false
             )
           ])
  end

  it 'renders a list of discounts' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('9.99'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
