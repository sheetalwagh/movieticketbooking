class Showtime < ApplicationRecord
  has_many :orders
  belongs_to :movie
  belongs_to :auditorium

end
