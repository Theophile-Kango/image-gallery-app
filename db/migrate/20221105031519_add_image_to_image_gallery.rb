class AddImageToImageGallery < ActiveRecord::Migration[6.1]
  def change
    add_column :image_galleries, :image, :string
  end
end
