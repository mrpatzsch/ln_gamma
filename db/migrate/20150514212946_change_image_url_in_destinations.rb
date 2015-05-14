class ChangeImageUrlInDestinations < ActiveRecord::Migration
  def change
    change_column :destinations, :image_url, :string
  end
end
