class Room < ActiveRecord::Base
    belongs_to :hotel
    has_many :reservations
    has_many :guests, through: :reservations


    def self.check_if_open
        self.all.map {|r| 
            if r.reservations.size != 0
                r.update(reserved: true)
            end
        }
    end


end