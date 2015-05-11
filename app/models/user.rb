class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :recoverable, :rememberable, :trackable,
  devise :database_authenticatable, :registerable, :validatable
  has_many :hotels
  has_many :establishments
  has_many :certified_hotels
end
