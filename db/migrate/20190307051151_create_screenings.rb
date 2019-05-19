class CreateScreenings < ActiveRecord::Migration[5.2]
  def change
    create_table :screenings do |t|  
    t.integer  "movie_id"
    t.integer  "theater_id"
    t.datetime "ondate"
    t.boolean  "first"
    t.boolean  "second"
    t.boolean  "third"
    t.boolean  "fourth"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "first_seats",  default: 100
    t.integer  "second_seats", default: 100
    t.integer  "third_seats",  default: 100
    t.integer  "fourth_seats", default: 100
    t.integer  "cost",                       null: false
    t.index ["movie_id"], name: "index_screenings_on_movie_id", using: :btree
    #t.index ["auditoria_id"], name: "index_screenings_on_auditoria_id", using: :btree
    end
  end
end