class CreateImageGalleries < ActiveRecord::Migration[6.1]
  def change
    create_table :image_galleries do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
