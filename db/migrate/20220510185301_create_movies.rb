class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.text :description
      t.string :playing_time
      t.string :photo
      t.string :release_date
      t.string :genre
      t.decimal :ticket_price
      t.string :country
      t.string :lead_cast

      t.timestamps
    end
  end
end
