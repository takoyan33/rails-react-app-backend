# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins 'https://rails-react-app-front.vercel.app','http://127.0.0.1:5173'
#     resource '*',
#       :headers => :any,
#       # ユーザー認証関連
#       :expose => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
#       # リソースに対して許可するHTTPリクエストメソッドを指定
#       :methods => [:get, :post, :options, :delete, :put, :head, :patch],
#     end
#   end
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://127.0.0.1:5173'
      resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
