Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins do |origin, _env|
        # Check if the origin is allowed (e.g., a Netlify subdomain)
        # You can implement your own logic here
        allowed_origins = ['https://timely-cactus-44d00e.netlify.app', 'http://localhost:3001']
        allowed_origins.include?(origin) || origin.start_with?('https://subdomain-of-netlify.netlify.app')
      end
      resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options, :head], credentials: true
    end
  end
  