class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :url
      t.string :url_description
      t.string :image
      t.string :image_description

      t.timestamps
    end
  end
end
