class ChangeColumnsInDestinations < ActiveRecord::Migration
  def change
    rename_column :destinations, :type, :category

    add_column :destinations, :seo_tags, :string
  end
end
