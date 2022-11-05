# frozen_string_literal: true

class ImageGallery < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :description, :image
  scope :most_recent, -> { order(created_at: :desc) }
end
