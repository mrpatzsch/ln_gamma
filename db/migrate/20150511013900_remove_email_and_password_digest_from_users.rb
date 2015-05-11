class RemoveEmailAndPasswordDigestFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :email, :string
    remove_column :users, :passwordDigest, :string
  end
end
