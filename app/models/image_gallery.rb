# frozen_string_literal: true

class ImageGallery < ApplicationRecord
  validates_presence_of :title, :description
  scope :most_recent, -> { order(created_at: :desc) }
end
