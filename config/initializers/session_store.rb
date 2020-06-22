if rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_auth_app", domain: "some-address-api.herokuapp.com"
else 
  Rails.application.config.session_store :cookie_store, key: "_auth_app"
end