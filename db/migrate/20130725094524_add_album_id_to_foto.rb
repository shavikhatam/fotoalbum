class AddAlbumIdToFoto < ActiveRecord::Migration
  def change
    add_column :fotos, :album_id, :integer
  end
end
