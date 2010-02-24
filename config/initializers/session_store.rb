# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_talk-testing-food-example_session',
  :secret      => 'c010175fcb8b2b5a63f1949aa2783ad9d140937f5b0c96f4b8c6140cb9ed3c63f49bf718e8bfa823960788819793cadcd216929a18c62844980879c95c1a67b9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
