class PagesController < ApplicationController
  def home
    @posts = Article.all
    @users = User.all
  end

  def about
  end

  def contact
  end
end
