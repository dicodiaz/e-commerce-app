require 'rails_helper'

RSpec.describe 'cosmetics/show', type: :view do
  before(:each) do
    assign(:cosmetic, Cosmetic.create!(
                        name: 'Name',
                        description: 'MyText',
                        brand: nil,
                        price: '9.99',
                        quantity: 2,
                        discount: nil
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
