class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :city
      t.date :date
      t.references :user, null:false, foreign_key:{to_table: :users}
      t.references :doctor, null:false, foreign_key:{to_table: :doctors}
      t.timestamps
    end
  end
end
