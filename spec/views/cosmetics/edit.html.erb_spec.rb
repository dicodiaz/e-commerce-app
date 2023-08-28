require 'rails_helper'

RSpec.describe 'cosmetics/edit', type: :view do
  let(:cosmetic) do
    Cosmetic.create!(
      name: 'MyString',
      description: 'MyText',
      brand: nil,
      price: '9.99',
      quantity: 1,
      discount: nil
    )
  end

  before(:each) do
    assign(:cosmetic, cosmetic)
  end

  it 'renders the edit cosmetic form' do
    render

    assert_select 'form[action=?][method=?]', cosmetic_path(cosmetic), 'post' do
      assert_select 'input[name=?]', 'cosmetic[name]'

      assert_select 'textarea[name=?]', 'cosmetic[description]'

      assert_select 'input[name=?]', 'cosmetic[brand_id]'

      assert_select 'input[name=?]', 'cosmetic[price]'

      assert_select 'input[name=?]', 'cosmetic[quantity]'

      assert_select 'input[name=?]', 'cosmetic[discount_id]'
    end
  end
end
