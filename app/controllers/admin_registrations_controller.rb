class AdminRegistrationsController < Devise::RegistrationsController
  # before_action :authenticate_admin_user!
  # skip_before_action :require_no_authentication, only: [:new, :create]

  # # before_filter :configure_permitted_parameters, :only => [:create]
  
  # layout "admin"


  # def new
  #   super
  # end

  # def create
  #   build_resource(admin_registration_params)

  #   if resource.save
  #     if resource.active_for_authentication?
  #       set_flash_message :notice, :signed_up if is_navigational_format?
  #       sign_up(resource_name, resource)
  #       respond_with resource, :location => after_sign_up_path_for(resource)
  #     else
  #       set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
  #       respond_with resource, :location => after_sign_up_path_for(resource)
  #     end
  #   else
  #     # clean_up_passwords
  #     respond_with resource
  #   end
  # end


  protected
  def after_sign_in_path_for(resource)
    '/admin/dashboard'
  end

  def after_update_path_for(resource)
    '/admin/meus-dados/editar'
  end

  def after_sign_up_path_for(resource)
     '/admin/administradores'
  end

  def after_sign_up_path_for(resource)
     '/admin/administradores'
  end

  def after_sign_in_path_for(resource)
      '/admin/dashboard'
  end


  def after_inactive_sign_up_path_for(resource)
  end

  def after_sign_out_path_for(resource)
    '/admin'
  end

  #devise invitable
  def after_accept_path_for(resource)
    '/admin/dashboard'
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :last_name, :password,
  #     :password_confirmation, :email, :tel, :current_password ) }
  #
  #   devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name, :last_name, :password,
  #     :password_confirmation, :email, :tel, :current_password  ) }
  #
  #   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
  # end



  private

  def admin_registration_params
    params.require(:admin_user).permit(:name, :password,
      :password_confirmation, :email, :tel, :current_password, :photo, :type, :role  )
  end

end
