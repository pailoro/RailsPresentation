class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?






  protected
  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:name, :photo, :role,
      :password, :password_confirmation, :current_password, :email ) }

    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:name, :photo, :role,
      :password, :password_confirmation, :current_password, :email) }

    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
  end




  layout :layout_by_resource

  def layout_by_resource
    if devise_controller? && resource_name == :admin_user && action_name == 'new'
      if admin_user_signed_in?
        "admin"
      else
        "login"
      end
    elsif devise_controller? && resource_name == :admin_user
      if action_name == 'new'
        "admin"
      else
        "admin"
      end

    elsif devise_controller? && resource_name == :user && action_name == 'new'
      if admin_user_signed_in?
        "loginUser"
      else
        "loginUser"
      end
    elsif devise_controller? && resource_name == :user
      if action_name == 'new'
        "loginUser"
      else
        "loginUser"
      end



    elsif devise_controller?
      "app"
    else
      "site"
    end
  end



  private

  def after_sign_up_path_for(resource_or_scope)
   if resource_name == :user
     '/meus-dados/editar'
   else
     '/admin/dashboard'
   end
  end

  def after_sign_in_path_for(resource_or_scope)
   if resource_name == :user
     '/meus-dados/editar'
   else
     '/admin/dashboard'
   end
  end


  def after_inactive_sign_up_path_for(resource_or_scope)
   if resource_name == :user
     '/'
   else
     '/admin/adminstradores'
    # editar_perfil_path(current_user.slug)
   end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_name == :user
      '/'
    else
      '/admin/dashboard'
    end
  end

  #devise invitable
  def after_accept_path_for(resource_or_scope)
   if resource_name == :user
      '/meus-dados/editar'
    else
      '/admin/dashboard'
      # editar_perfil_path(current_user.slug)
    end
  end

  def after_invite_path_for(resource_or_scope)
    '/admin/usuarios'
  end



end
