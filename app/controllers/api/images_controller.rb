# frozen_string_literal: true

module Api
  class ImagesController < ApplicationController
    before_action :authenticate_user!

    def index
      images = ImageGallery.all.most_recent
      if articles == []
        render json: { images: images }, status: 204
      else
        render json: images, each_serializer: ImagesIndexSerializer
      end
    end

    def create 
      #img = Cloudinary::Uploader.upload(params[:image])
    end
  end
end
