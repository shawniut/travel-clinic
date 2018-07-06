class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :destination
      t.string :health_card_number
      t.string :additional_health_card_number
      t.datetime :travel_date
      t.datetime :ap_datetime
      t.text :message
      t.string :location

      t.timestamps null: false
    end
  end
end
