class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :location
      t.string :website
      t.string :certification
      t.string :type
      t.text :desc_prod
      t.text :desc_good
      t.text :directions
      t.text :recommended

      t.timestamps null: false
    end
  end
end
