class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(%i[cosmetics]).all
  end
end
