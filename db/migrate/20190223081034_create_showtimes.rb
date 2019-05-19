class CreateShowtimes < ActiveRecord::Migration[5.2]
  def change
    create_table :showtimes do |t|
      t.datetime :time
      t.integer :tickets_sold, :default => 0
      
      t.references :movie
      t.references :auditorium

      t.timestamps
    end
  end
end
