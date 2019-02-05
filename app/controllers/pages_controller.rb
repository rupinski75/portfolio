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

  def dashboard
    @user = User.where(params[:id])
  end

  private
  def pages_params
    params.require(:page).permit(:id)
  end
end
