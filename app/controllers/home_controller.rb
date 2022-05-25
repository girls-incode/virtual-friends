class HomeController < ApplicationController
  def index
  end

  def about
    @title = 'Welcome to my page'
  end
end
