Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:3000", "http://localhost:5000" 
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
  credentials: true
  end

  #  rename origin site here to production, eg heroku app address.
  # allow do
  #   origins "http://localhost:3000"
  #   resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
  # credentials: true
  # end
end