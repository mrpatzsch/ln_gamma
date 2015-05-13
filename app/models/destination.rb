class Destination < ActiveRecord::Base
  belongs_to :user
  has_many :bucketlist_items
  accepts_nested_attributes_for :bucketlist_items
end
