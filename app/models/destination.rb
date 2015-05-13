class Destination < ActiveRecord::Base
  belongs_to :user
  has_many :bucketlists
  accepts_nested_attributes_for :bucketlists
end
