# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_projekt1_session',
  :secret      => 'f39e1db5a159d294261ff4a8299bf8c998e6a7f2d60310c5be74c9ac255b087a535517c725cd7b9e942148149b00245fe2909162ea9d60cc0a3cbb8d88742560'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
