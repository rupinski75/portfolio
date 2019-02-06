class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :update, :edit, :destroy]

  def index
    @galleries = Gallery.all
  end

  def show
    @pictures = Picture.where(gallery_id: @gallery.id)
  end

  def new
    @gallery = Gallery.new
    3.times { @gallery.pictures.build }
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

  def edit
  end

  def update
    respond_to do |format|
      if @gallery.update(gallery_params)
        format.html { redirect_to galleries_path, notice: 'Gallery was updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @gallery.destroy
    respond_to do |format|
      format.html { redirect_to galleries_url, notice: 'Gallery was successfully destroyed.' }
    end
  end

  private
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    def gallery_params
      params.require(:gallery).permit(:title, :description, :thumb_image, :user_id, pictures_attributes: [:size, :image_link])
    end
end
