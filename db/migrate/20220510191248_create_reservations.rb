class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: {to_table: 'users'}, index: true
      t.references :movie, null: false, foreign_key: {to_table: 'movies'}, index: true
      t.string :location
      t.string :date

      t.timestamps
    end
  end
end
