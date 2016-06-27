class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date
      t.integer :organization_id
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip, null: false
      t.float :lat
      t.float :lng
      t.integer :num_volunteers, null: false

      t.timestamps null: false
    end
  end
end
