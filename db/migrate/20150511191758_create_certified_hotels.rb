class CreateCertifiedHotels < ActiveRecord::Migration
  def change
    create_table :certified_hotels do |t|
      t.string :name
      t.integer :hotel_id
      t.integer :user_id
      t.string :certification

      t.timestamps null: false
    end
  end
end
