class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable
end
