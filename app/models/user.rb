class User

def initialize(user_id, password)
  @user_id = user_id
  @password = password
  @full_name = "Default Full Name"
  @street_address = "Default Street Address"
  @city = "Defailt City"
  @state = "Default State"
  @postal_code = "Default Postal Code"
  @country = "Default Country"
  @email_address = "Default Email Address"
end

 def full_name
   @full_name
 end

 def street_address
   @street_address
 end

 def city
   @city
 end

 def state
   @state
 end

 def postal_code
   @postal_code
 end

 def country
   @country
 end

 def email_address
   @email_address
 end

 def user_id
   @user_id
 end

 def password
   @password
 end
end
