require 'rails_helper'

RSpec.describe 'discounts/show', type: :view do
  before(:each) do
    assign(:discount, Discount.create!(
                        name: 'Name',
                        description: 'MyText',
                        percent: '9.99',
                        active: false
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
  end
end
