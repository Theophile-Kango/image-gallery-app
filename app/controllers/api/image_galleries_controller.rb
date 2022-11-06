# frozen_string_literal: true

module Api
  class ImageGalleriesController < ApplicationController
    before_action :authenticate_user!

    def index
      images = ImageGallery.all.most_recent
      if images == []
        render json: { images: images }, status: 204
      else
        render json: images, each_serializer: ImagesIndexSerializer
      end
    end

    def create
      img = Cloudinary::Uploader.upload(params[:image]) if params[:image].present?
      gallery = current_user.image_galleries.create(title: params[:title], description: params[:description], image: img["secure_url"]) if img.present?
      
      render json: gallery
      
    end
  end
end
