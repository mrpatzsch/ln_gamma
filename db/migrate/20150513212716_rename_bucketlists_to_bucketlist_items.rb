class RenameBucketlistsToBucketlistItems < ActiveRecord::Migration
  def change
    rename_table :bucketlists, :bucketlist_items
  end
end
