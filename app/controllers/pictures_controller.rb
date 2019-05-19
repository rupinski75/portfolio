class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def show
  end

  def new
    @picture = Picture.new
  end

  def edit
    @tags_array = Tag.all.map { |tag| [tag.name, tag.id] }
    # p "============================="
    # p @tags_array
    # p "============================="
  end

  def create
    @picture = Picture.new(picture_params)
    @picture_tag = PictureTag.find(params: [:picture_id][:tag_id])
    respond_to do |format|
      if @picture.save
        @picture_tag.pictures << @picture
        format.html { redirect_to @picture, notice: 'Picture was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    p "============================================================"
    @picture_tag = PictureTag.find(params: [:picture_id][:tag_id])
    puts @picture_tag + "heeeeeeeere"
    respond_to do |format|
      if @picture.update(picture_params)
        @picture_tag.pictures << @picture
        format.html { redirect_to @picture, notice: 'Picture was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: 'Picture was successfully destroyed.' }
    end
  end

  private
  def set_picture
    @picture  = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:size, :image_link, :description)
  end
end
