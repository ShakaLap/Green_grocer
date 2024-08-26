Warden::JWTAuth.configure do |config|
  config.jwt_from_request = lambda do |request|
    request.cookies['jwt']
  end
end