class Bucketlist < ActiveRecord::Base
    belongs_to :user
    belongs_to :destination
    belongs_to :certified_hotel

end
