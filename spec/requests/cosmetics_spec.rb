require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/cosmetics', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Cosmetic. As you add validations to Cosmetic, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Cosmetic.create! valid_attributes
      get cosmetics_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      cosmetic = Cosmetic.create! valid_attributes
      get cosmetic_url(cosmetic)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_cosmetic_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      cosmetic = Cosmetic.create! valid_attributes
      get edit_cosmetic_url(cosmetic)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Cosmetic' do
        expect do
          post cosmetics_url, params: { cosmetic: valid_attributes }
        end.to change(Cosmetic, :count).by(1)
      end

      it 'redirects to the created cosmetic' do
        post cosmetics_url, params: { cosmetic: valid_attributes }
        expect(response).to redirect_to(cosmetic_url(Cosmetic.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Cosmetic' do
        expect do
          post cosmetics_url, params: { cosmetic: invalid_attributes }
        end.to change(Cosmetic, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post cosmetics_url, params: { cosmetic: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested cosmetic' do
        cosmetic = Cosmetic.create! valid_attributes
        patch cosmetic_url(cosmetic), params: { cosmetic: new_attributes }
        cosmetic.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the cosmetic' do
        cosmetic = Cosmetic.create! valid_attributes
        patch cosmetic_url(cosmetic), params: { cosmetic: new_attributes }
        cosmetic.reload
        expect(response).to redirect_to(cosmetic_url(cosmetic))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        cosmetic = Cosmetic.create! valid_attributes
        patch cosmetic_url(cosmetic), params: { cosmetic: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested cosmetic' do
      cosmetic = Cosmetic.create! valid_attributes
      expect do
        delete cosmetic_url(cosmetic)
      end.to change(Cosmetic, :count).by(-1)
    end

    it 'redirects to the cosmetics list' do
      cosmetic = Cosmetic.create! valid_attributes
      delete cosmetic_url(cosmetic)
      expect(response).to redirect_to(cosmetics_url)
    end
  end
end
