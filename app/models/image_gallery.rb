# frozen_string_literal: true

class ImageGallery < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :description, :image 
  validates :image, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }

  scope :most_recent, -> { order(created_at: :desc) }
end
