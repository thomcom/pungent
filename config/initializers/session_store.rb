# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pungent_session',
  :secret      => 'aee8d6ad1bc6b9997626e22c46a370ec95de230163bb23a276f5471b67df7ab00dbf4604166ce34084b4693c758d16a584047186a06906c0f07c8d7857bd9ae3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
