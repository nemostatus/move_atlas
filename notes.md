
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
vehicle - Id, plate_number, rent_date
user - Id, username
reviews - Id, 

has_many relationship
-vehicle has many users

belongs_to 
-reviews belongs_to users/vehicles(join
) many to many

has many through
-users have many vehicles through reviews
-vehicles have many users through reviews
