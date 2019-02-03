class PagesController < ApplicationController
  def home
    @posts = Article.all
    @users = User.all
    @galleries = Gallery.all
  end

  def about
  end

  def contact
  end
end
