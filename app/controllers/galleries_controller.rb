class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show]

  def index
    @galleries = Gallery.all
  end

  def show
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)

    respond_to do |format|
      if @gallery.save
        format.html { redirect_to galleries_path, notice: 'Gallery was created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    def gallery_params
      params.require(:gallery).permit(:title, :description, :thumb_image, :user_id)
    end
end
