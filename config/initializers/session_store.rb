# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_evrone_session',
  :secret      => '102b5a704277faf80e4f5f7dc29b6581e391d0c8967948c3184adf0284bc21d179644940df2bc3a2fb4d16da42ada31921837a1d61f21d07dab17bac525eb55f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
