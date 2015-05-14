class Destination < ActiveRecord::Base
  belongs_to :user
  has_many :bucketlist_items
  accepts_nested_attributes_for :bucketlist_items


  has_attached_file :image, styles: { large: "670x520", medium: "300x220>", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
