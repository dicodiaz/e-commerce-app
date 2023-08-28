require 'rails_helper'

RSpec.describe 'cosmetics/new', type: :view do
  before(:each) do
    assign(:cosmetic, Cosmetic.new(
                        name: 'MyString',
                        description: 'MyText',
                        brand: nil,
                        price: '9.99',
                        quantity: 1,
                        discount: nil
                      ))
  end

  it 'renders new cosmetic form' do
    render

    assert_select 'form[action=?][method=?]', cosmetics_path, 'post' do
      assert_select 'input[name=?]', 'cosmetic[name]'

      assert_select 'textarea[name=?]', 'cosmetic[description]'

      assert_select 'input[name=?]', 'cosmetic[brand_id]'

      assert_select 'input[name=?]', 'cosmetic[price]'

      assert_select 'input[name=?]', 'cosmetic[quantity]'

      assert_select 'input[name=?]', 'cosmetic[discount_id]'
    end
  end
end
