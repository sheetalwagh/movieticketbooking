class Movie < ApplicationRecord
  has_many :showtimes
  has_many :orders, through: :showtimes
  has_and_belongs_to_many :auditorium
end
