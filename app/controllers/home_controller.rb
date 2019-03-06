class HomeController < ApplicationController
  def index
  end

  def unregistered
  	@products = Product.all
  end
end
