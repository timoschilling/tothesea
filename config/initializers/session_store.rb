# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ich_will_zum_meer_session',
  :secret      => '677f1dd0b5bf527c06d754d0a6282beacd7676bbc50c8e6efbdd57b9c9165eb70856f8baec25a7ef8c5f5e3dbb2dcd90471b34598025fbb094d7c6138d087098'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
