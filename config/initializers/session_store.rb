# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_noskvabbel_session',
  :secret      => '909a3d7e380a6925382b7a5e646977257a98c9f5ebc7c0bb3c74d382698fdc8bf641eb2bb89e97fa83f29be826d03d3f5a0a391f39b5426fdf93de872ff7f847'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
