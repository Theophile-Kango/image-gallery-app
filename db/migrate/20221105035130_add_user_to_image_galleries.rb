class AddUserToImageGalleries < ActiveRecord::Migration[6.1]
  def change
    add_reference :image_galleries, :user, null: false, foreign_key: true
  end
end
