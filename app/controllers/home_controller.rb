class HomeController < ApplicationController
  def index
  end

  def about
    @title = 'What is this app about ?'
  end
end
