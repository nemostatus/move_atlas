
reason for app ?
a preventative measure
let's those who are aware see there are bugs, they can post online of their findings then the less experienced can check and ask for a different vehicle or try a different method of moving. So app is structured as such
"Find a vehicle" "Create a vehicle" "Your vehicles"
username - anonymity
find - links to a page where you are able to search the db via Vehicle.find_by(plate_number) this will take in number and check db if it exists. conditional 
if its exists then bring up a link which showsa link of other posts from users else say "this vehicle doesn't exist. Would you like to create it here? then "here" is the link for the "create a vehicle page" (with)

relationships
----------------

models 
vehicles - Id, plate_number, rent_date
users - Id, username
reviews - Id, 

has_many relationship
-vehicle has many users

belongs_to 
-reviews belongs_to users/vehicles(join
) many to many

has many through
-users have many vehicles through reviews
-vehicles have many users through reviews

validation
-----------
user - username(prescence and uniquness)
vehicle - presence of plate_number and other attrs
review - presence of bug_type

scope method
-------------
class method
lives in model
 def find_vehicle_by_plate_number
 Vehicle.find_by(plate_number: params[:plate_number])
 end

 scope :method_name, => { activerecord method(column: 'value')}
 scope 

 NEW THOUGHT 
 Instead of just reviewing the bad you also let other users know if the vehicle was good and when that way they can query the most recent experiencce someon had with the vehicle and can tell if theyll have a good experience or not so that means I'll have to add an attr to the table. something like... :status()

 To do :
 ensure scope methods are actually scope methods do some research #yes its just syntactic sugar the other way
I want to create a link that goes to a page for all of the users vehicles so that 
 