# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_scaffold_session',
  :secret      => 'c33c7320c2a931e6133238e883c182d5564108ba6bef0073503c3d46464575eff62384e1e1e31899d5486ee0d39b99ff4a387c4416d7c1dd8c5d35c752feb298'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
