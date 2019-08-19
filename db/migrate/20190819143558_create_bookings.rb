class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.date :date
      t.string :status
      t.integer :group_size

      t.timestamps
    end
  end
end
