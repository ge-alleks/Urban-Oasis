#UrbanOasis.rb

#Class for Oasis
class UrbanOasis
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

#Class for Oasis Locations
class OasisLocation
  attr_accessor :name, :address, :city, :state, :zip
  
  def initialize(name, address, city, state, zip)
    @name = name
    @address = address
    @city = city
    @state = state
    @zip = zip
  end
end

#Class for Oasis Amenities
class OasisAmenities
  attr_accessor :name, :description
  
  def initialize(name, description)
    @name = name
    @description = description
  end
end

#Class for Oasis Specials
class OasisSpecials
  attr_accessor :name, :description, :discount_code

  def initialize(name, description, discount_code)
    @name = name
    @description = description
    @discount_code = discount_code
  end
end

#Class for Oasis Events
class OasisEvents
  attr_accessor :name, :date, :location, :time, :description
  
  def initialize(name, date, location, time, description)
    @name = name
    @date = date
    @location = location
    @time = time
    @description = description
  end
end

#Class for Oasis Reviews
class OasisReviews
  attr_accessor :rating, :review
  
  def initialize(rating, review)
    @rating = rating
    @review = review
  end
end

#Class for Oasis Security
class OasisSecurity
  attr_accessor :name, :security_detail
  
  def initialize(name, security_detail)
    @name = name
    @security_detail = security_detail
  end
end

#Class for Oasis Members
class OasisMember
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end
end

#Class for Oasis Services
class OasisService
  attr_accessor :name, :service_description, :cost

  def initialize(name, service_description, cost)
    @name = name
    @service_description = service_description
    @cost = cost
  end
end

#Create Oasis
new_oasis = UrbanOasis.new('Urban Oasis')

#Create new Locations
hollywood_oasis = OasisLocation.new('Hollywood Oasis', '123 Main Street', 'Los Angeles', 'CA', '90210')
downtown_oasis =  OasisLocation.new('Downtown Oasis', '456 Broadway', 'New York', 'NY', '10456')

#Create new Amenities
cardio_room = OasisAmenities.new('Cardio Room', 'Spin bikes, treadmills, rowing machines, ellipticals')
weight_room = OasisAmenities.new('Weight Room', 'Weight benches, barbells, weights, machines')

#Create new Specials
summer_special = OasisSpecials.new('Summer Special', '50% off all membership levels!', 'SUMMERSALE')
fall_special = OasisSpecials.new('Fall Special', '25% off all classes!', 'FALLSALE')

#Create new Events
yoga_class = OasisEvents.new('Yoga Class', 'August 18th', 'Hollywood Oasis', '6:00pm', 'Relax, de-stress and restore with a gentle yoga class')
zumba_class = OasisEvents.new('Zumba Class', 'September 1st', 'Downtown Oasis', '7:30pm', 'Party yourself into shape! Burn calories while dancing to upbeat Latin tunes.')

#Create new Reviews
five_star_review = OasisReviews.new(5, 'I absolutely love this oasis! The staff is so friendly and helpful.')
four_star_review = OasisReviews.new(4, 'This oasis has a nice atmosphere and great facilities.')

#Create new Security
security_guards = OasisSecurity.new('Security Guards', '24-hour security guards and cameras for added safety')
keycard_access = OasisSecurity.new('Keycard Access', 'Members must use a keycard to gain access to the facility')

#Create new Members
john_doe = OasisMember.new('John Doe', 'jdoe@email.com')
jane_doe = OasisMember.new('Jane Doe', 'jane@email.com')

#Create new Services
massage_therapy = OasisService.new('Massage Therapy', 'Enjoy the calming benefits of a massage with a licensed massage therapist', '$50-$100/session')
personal_training = OasisService.new('Personal Training', 'One-on-one or group sessions with a certified trainer to help you reach your fitness goals', '$75/hour')

puts 'Welcome to Urban Oasis!'