class Order < ApplicationRecord
	belongs_to :showtime
  	accepts_nested_attributes_for :showtime
end
