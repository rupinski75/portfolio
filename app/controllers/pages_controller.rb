class PagesController < ApplicationController
  def home
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
