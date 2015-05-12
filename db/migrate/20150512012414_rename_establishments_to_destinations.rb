class RenameEstablishmentsToDestinations < ActiveRecord::Migration
  def change
    rename_table :establishments, :destinations
  end
end
