class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :degree
      t.integer :years

      t.timestamps
    end
  end
end
