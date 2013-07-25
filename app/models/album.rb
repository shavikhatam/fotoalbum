class Album < ActiveRecord::Base

  validates :title, presence: true

  has_many :fotos, dependent: :destroy

end
