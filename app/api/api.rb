class API < Grape::API
  version 'v1', using: :accept_version_header
  format :json
  prefix :api
  
  # http_basic do |email, password|
  #   user = User.find_by_email(email)
  #   user && user.valid_password?(password)
  # end
  
  mount V1::Users
end