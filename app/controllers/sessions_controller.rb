# frozen_string_literal: true

class SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  respond_to :html, :json

  

  # def create
  #   session['user_auth'] = params[:user]
  #   resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")

  #   sign_in(resource_name, resource)
  #   message = I18n.t 'devise.sessions.signed_in'

  #   yield resource if block_given?

  #   if request.xhr?
  #    return render :json => {:success => true, :login => true, :data =>  {:message => message}}
  #   else
  #     respond_with resource, location: after_sign_in_path_for(resource)
  #   end
  # end

  # def failure
  #   user = User.where(email: session['user_auth'][:email]).first rescue nil
  #   message = I18n.t 'devise.failure.invalid', authentication_keys: "email"

  #   respond_to do |format|
  #     format.json {
  #       render :json => {:success => false, :data => {:message => message, :cause => 'invalid'} }
  #     }
  #     format.html {
  #       redirect_to '/users/sign_in'
  #     }
  #   end
  # end

  # protected


  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end



  protected




  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up)
  #   # devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.


  def after_sign_in_path_for(resource)
     '/meus-dados/editar'
  end



end
