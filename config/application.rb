require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    config.load_defaults 6.0
    config.api_only = true
      config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore
    config.session_store :active_record_store, key: '_your_app_session', expire_after: 14.days
    # CORSの設定
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins "*"
        expose = ["access-token", "expiry", "token-type", "uid", "client"]
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], expose: expose
      end
    end
  end
end
