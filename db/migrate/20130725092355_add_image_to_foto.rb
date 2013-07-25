class AddImageToFoto < ActiveRecord::Migration
  def change
    add_attachment :fotos, :image
  end
end
