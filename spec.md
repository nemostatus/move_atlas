Specifications for the Rails Assessment
Specs:

 [x] Using Ruby on Rails for the project #ruby on rails is used model-view-controller framework
  [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) # vehicle has_many reviews
 [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) review belongs to vehicle + user
 [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) vehicle has_many reviews through users   user has many reviews through vehicles
 [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) line 7 and 8
 [X]The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
 user -username  vehicle -plate number review(through) - customer_experience_rating
 [X]Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) validations in models
 [x]Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature
  e.g. User.most_recipes URL: /users/most_recipes) vehicles has both clean and infested scopes which are chainable using order()
 [X]Include signup (how e.g. Devise) signup available 
 [X]Include login (how e.g. Devise) login available 
 [X]Include logout (how e.g. Devise) logout available 
 [x]Include third party signup/login (how e.g. Devise/OmniAuth) omniauth using github
 [x]Include nested resource show or index (URL e.g. users/2/recipes) /vehicles/6/reviews
 [x]Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) /vehicles/5/reviews/new
 [x]Include form display of validation errors (form URL e.g. /recipes/new)  DONE
Confirm:

 [x]The application is pretty DRY create partials and before_action: carefully try DRYing omniauth 
 [x]Limited logic in controllers before_Action remove repition and uneeded code where you see it need to dry omniauth if theres time but everything else seems DRY
 [x]Views use helper methods if appropriate
 [x]Views use partials if appropriate
 
