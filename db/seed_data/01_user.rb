
class UserUtil

  NUMBER_OF_USERS = 10
  
  def initialize
    populate(10)
  end  
  
  def populate(num_of_users)
    User.delete_all
    User.populate(num_of_users) do |u|
      u.email              = Faker::Internet.free_email
      u.encrypted_password = BCrypt::Password.create( Faker::Internet.password(8, 20, true) )
      u.sign_in_count = 0
  
    end
  end
  
  def add_specifics(u)
    u.is_admin      = [true, false]
    u.is_vendor     = [true, false]
      
    u.is_customer   = [true, false]
    u.is_verified   = [true, false]
    u.gender        = ["m", "f", "o"]
    u.locale        = Faker::Config.locale #= 'en-US'
    u.age           = Faker::Number.between(18, 99)
    u.first_name    = Faker::Name.first_name
    u.last_name     = Faker::Name.last_name
    u.full_name     = u.first_name + " " + u.last_name
    u.timezone      = [-8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8]
    u.stripe_token  = Faker::Internet.password
    u.phone_mobile  = Faker::PhoneNumber.cell_phone
    u.phone_other   = Faker::PhoneNumber.phone_number
  end
  
  def populate_vendor(u)
    Vendor.populate(1) do |v|
      v.user_id            = u.id
      v.professional_name  = Faker::Superhero.name
      v.bio                = Faker::Hipster.paragraph
      v.address            = address
      v.is_student         = [true, false]
      v.age_range          = age_range(u.age)
      v.social_media       = ['instragram', 'facebook', 'linkedin', 'pinterest', 'twitter']
    end
  end
  
  def populate_admin(u)
  end
  
  def populate_customer(u)
    
  end
  
  private
  
  def address
    Faker::Address.street_address + "|" + 
    Faker::Address.secondary_address + "|" + 
    Faker::Address.city + "|" + 
    Faker::Address.state + "|" + 
    Faker::Address.zip
  end

  def age_range(age)
    case age
    when 13..17
      "13-17"
    when 18..24
      "18-24"
    when 25..34
      "25-34"
    when 35..44
      "45-54"
    when 45..54
      "45-54"
    when 55..64
      "55-64"
    when 65..74
      "65-74"
    when 75..99
      "75-99"
    else 
      "100+"
    end
  end
end

UserUtil.new