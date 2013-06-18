class AddVetIdToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :vet_id, :integer
  end
end
