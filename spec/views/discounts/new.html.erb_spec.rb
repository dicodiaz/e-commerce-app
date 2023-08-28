require 'rails_helper'

RSpec.describe 'discounts/new', type: :view do
  before(:each) do
    assign(:discount, Discount.new(
                        name: 'MyString',
                        description: 'MyText',
                        percent: '9.99',
                        active: false
                      ))
  end

  it 'renders new discount form' do
    render

    assert_select 'form[action=?][method=?]', discounts_path, 'post' do
      assert_select 'input[name=?]', 'discount[name]'

      assert_select 'textarea[name=?]', 'discount[description]'

      assert_select 'input[name=?]', 'discount[percent]'

      assert_select 'input[name=?]', 'discount[active]'
    end
  end
end
