class CreateBucketlists < ActiveRecord::Migration
  def change
    create_table :bucketlists do |t|
      t.references :user
      t.references :certified_hotel
      t.references :destination

      t.timestamps null: false
    end
  end
end
