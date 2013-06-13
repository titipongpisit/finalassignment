LeadImpactApp::Application.routes.draw do

  # Route for home page
  get '/', controller: 'home', action: 'index'

  # Home page
  get '/home', controller: 'home', action: 'index', as: 'home'
  # About Us page
  get '/home/aboutus', controller: 'home', action: 'aboutus', as: 'aboutus'
  # Get Involved page
  get '/home/getinvolved', controller: 'home', action: 'getinvolved', as: 'getinvolved'
  # Careers page
  get '/home/careers', controller: 'home', action: 'careers', as: 'careers'
  # News & Updates page
  get '/home/updates', controller: 'home', action: 'updates', as: 'updates'
  # Subcription page
  get '/home/subscribe', controller: 'contacts', action: 'subscribe', as: 'subscribe'
  post '/home/subscribe', controller: 'contacts', action: 'submit'
  # Contact Us page
  get '/home/contactus', controller: 'contacts', action: 'contactus', as: 'contactus'
  post '/home/contactus', controller: 'contacts', action: 'message'
  # Summary page
  get '/home/summary', controller: 'contacts', action: 'summary', as: 'contactsummary'
  #delete '/home/summary', controller: 'contacts', action: 'destroy'

  #-------------------User Login------------------------
  get '/login', controller: 'sessions', action: 'new', as:'login'
  post '/sessions', controller: 'sessions', action: 'create'
  get "/logout", controller: 'sessions', action: 'destroy'

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'signup'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'myprofile'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'updateprofile'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  
  #-------------------Programs------------------------
  # Our Programs page
  get '/programs', controller: 'programs', action: 'index', as: 'ourprograms'

  # Summer Program page
  get '/programs/summerprogram', controller: 'programs', action: 'summerprogram', as: 'summerprogram'
  # After School Program page
  get '/programs/afterschool', controller: 'programs', action: 'afterschool', as: 'afterschool'

  # Apply to My Programs
  get '/users/:id/apply', controller: 'programs', action: 'apply', as: 'apply'
  post '/users/:id', controller: 'programs', action: 'submit'

  # Programs overview
  get '/programs/overview', controller: 'programs', action: 'overview', as: 'programoverview'

end
