class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :visit_date
      t.integer :pet_id
      t.integer :customer_id
      t.boolean :reminder
      t.string :reason_for_visit

      t.timestamps
    end
  end
end
