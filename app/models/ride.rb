class Ride < ActiveRecord::Base
    belongs_to :user
    belongs_to :attraction

    def take_ride
        case
        when self.attraction.tickets>self.user.tickets && self.attraction.min_height>self.user.height
            'Sorry. You do not have enough tickets to ride the Roller Coaster. You are not tall enough to ride the Roller Coaster.'
        when self.attraction.tickets>self.user.tickets
            'Sorry. You do not have enough tickets to ride the Roller Coaster.'
        when self.attraction.min_height>self.user.height
            'Sorry. You are not tall enough to ride the Roller Coaster.'
        else
            self.user[:tickets].update(self.user.tickets-self.attraction.tickets)
            self.user.update[:nausea]=self.user.nausea+self.attraction.nausea_rating
            self.user.update[:happiness]=self.user.happiness+self.attraction.happiness_rating
        end
    end
end
