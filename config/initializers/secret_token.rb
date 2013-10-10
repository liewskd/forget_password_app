# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#ForgetPasswordApp::Application.config.secret_key_base = 'c7bea82ff8f49a66cf5dd5cbbb107448667f9b3306366d41f506bdd977b6cfa8343eb9c7c9362699214b19c871584bc713c033a5475064042dd87265f9eae3c3'


require 'securerandom'

def secure_token
    token_file = Rails.root.join('.secret')
    if File.exist?(token_file)
        File.read(token_file).chomp
        else
        token = SecureRandom.hex(64)
        File.write(token_file,token)
        token
    end
end

ForgetPasswordApp::Application.config.secret_key_base = secure_token