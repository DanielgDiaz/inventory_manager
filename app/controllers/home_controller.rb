class HomeController < ApplicationController
  def index
    @articles = Article.order(:title)
  end
end
