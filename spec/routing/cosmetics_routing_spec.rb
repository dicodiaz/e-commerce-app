require 'rails_helper'

RSpec.describe CosmeticsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/cosmetics').to route_to('cosmetics#index')
    end

    it 'routes to #new' do
      expect(get: '/cosmetics/new').to route_to('cosmetics#new')
    end

    it 'routes to #show' do
      expect(get: '/cosmetics/1').to route_to('cosmetics#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/cosmetics/1/edit').to route_to('cosmetics#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/cosmetics').to route_to('cosmetics#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/cosmetics/1').to route_to('cosmetics#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/cosmetics/1').to route_to('cosmetics#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/cosmetics/1').to route_to('cosmetics#destroy', id: '1')
    end
  end
end
