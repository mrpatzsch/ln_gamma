class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :recoverable, :rememberable, :trackable,
  devise :database_authenticatable, :registerable, :validatable
  has_many :hotels
  has_many :establishments
  has_many :certified_hotels
  has_many :bucketlist_items

  def has_bucket_list_item?(destination_id)
    self.bucketlist_items.find_by(destination_id: destination_id)
  end

end
