class Spot < ActiveRecord::Base
  validates :user_id, presence: true
  validates :image, presence: true
  has_attached_file :image, styles: { :medium => "640x" }, :url => "/images/upload/:style/photo.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  belongs_to :user
  geocoded_by :adress
  after_validation :geocode
   validates :adress, presence: true
end
