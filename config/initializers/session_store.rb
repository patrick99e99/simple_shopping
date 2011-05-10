# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_simple_shopping_session',
  :secret      => '6d9b8f7fb5b52d9403e48c062c5d48a7571aeeff28800e825b9acb5e279c2f45907bba76fa5d3acdbbf899e8820210383c785191bd9fc1b0bdb914deb421361a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
