class HomeController < ApplicationController

  def index
    @food = Food.all
  end

end
