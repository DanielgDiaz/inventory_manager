class HomeController < ApplicationController
  before_action
  def index
    @articles = Article.order(:title)
  end
end
