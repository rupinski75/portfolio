class PictureTagsController < ApplicationController
  def index
    @picture_tags = PictureTag.all
  end
end
