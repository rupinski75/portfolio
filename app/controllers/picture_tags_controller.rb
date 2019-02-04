class PictureTagsController < ApplicationController
  def index
    @picture_tags = Picture_tag.all
  end
end
