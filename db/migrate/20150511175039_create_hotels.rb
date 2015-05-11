class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.integer :user_id
      t.integer :hotel_id

      t.timestamps null: false
    end
  end
end
