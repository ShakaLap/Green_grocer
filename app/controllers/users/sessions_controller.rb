# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  def create
    super do |user|
      token = request.env['warden-jwt_auth.token']
      cookies.signed[:jwt] = { value: token, httponly: true, secure: Rails.env.production?, same_site: :lax }
    end
  end


    def destroy
      super do
        cookies[:jwt] = { value: nil, expires: Time.now - 1.day, domain: 'localhost', path: '/' }
      end
    end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
