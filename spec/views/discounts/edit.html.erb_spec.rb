require 'rails_helper'

RSpec.describe 'discounts/edit', type: :view do
  let(:discount) do
    Discount.create!(
      name: 'MyString',
      description: 'MyText',
      percent: '9.99',
      active: false
    )
  end

  before(:each) do
    assign(:discount, discount)
  end

  it 'renders the edit discount form' do
    render

    assert_select 'form[action=?][method=?]', discount_path(discount), 'post' do
      assert_select 'input[name=?]', 'discount[name]'

      assert_select 'textarea[name=?]', 'discount[description]'

      assert_select 'input[name=?]', 'discount[percent]'

      assert_select 'input[name=?]', 'discount[active]'
    end
  end
end
