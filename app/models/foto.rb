class Foto < ActiveRecord::Base

  validates :title, presence: true
  validates :album_id, presence: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  belongs_to :album

end
