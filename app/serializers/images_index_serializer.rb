# frozen_string_literal: true

class ImagesIndexSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image, :date

  def date
    object.created_at.strftime('%d/%m/%Y %H:%M')
  end
end
