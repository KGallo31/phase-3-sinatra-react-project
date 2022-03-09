class Guest < ActiveRecord::Base
    has_many :reservations
    has_many :rooms, through: :reservations
end