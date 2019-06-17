# Be sure to restart your server when you modify this file.

# rails-env not set yet.
# Rails.application.config.session_store :cookie_store, key: "_brail347a22_session_#{RAILS_ENV}"

# 2019-06-16_Sun_19.28-PM set different session for each env..
Rails.application.config.session_store :cookie_store, key: "brail347a22-#{Rails.env}_session"

# this forces a new session on every startup, not desirable.
# Rails.application.config.session_store :cookie_store, key: "brail347a22_#{rand(1000)}#{Rails.env}_session"

puts  Rails.env.to_sym, :all
puts  " rails.env.23 #{Rails.env}"

# 2019-06-16 
# Rails.application.config.session_store :cookie_store, key: '_brail347a22_subsession', domain: {
#   production: '.example.com',
#   development: '.example.dev'
# }.fetch(Rails.env.to_sym, :all)

