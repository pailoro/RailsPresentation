class UsersRegistrationsController < Devise::RegistrationsController
	respond_to :html, :json
	
	# def create
	#   params[:user][:password_confirmation] = params[:user][:password]

 #    auth_options = { :recall => 'home#index', :scope => :user }
 #    resource = warden.authenticate!(auth_options)
	#   super

	# end

	  def create
		   build_resource(sign_up_params)

		   resource.save
		   yield resource if block_given?
		  if resource.persisted?
		    if resource.active_for_authentication?
		      set_flash_message! :notice, :signed_up
		      sign_up(resource_name, resource)

		      @nome = current_user.name if current_user.name.present?
              @email = current_user.email 
              ConfirmacaoMailer.confirmacao_estilo(@nome, @email).deliver

		      respond_with resource, location: after_sign_up_path_for(resource)
		    else
		      set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
		      expire_data_after_sign_in!
		      respond_with resource, location: after_inactive_sign_up_path_for(resource)
		    end
		  else
		    clean_up_passwords resource
		    set_minimum_password_length
		    response_to_sign_up_failure resource    
		  end


		def response_to_sign_up_failure(resource)
		  if resource.email == "" && resource.password == nil
		    redirect_to root_path, alert: " Preencha o formulário"
		  elsif User.pluck(:email).include? resource.email
		    redirect_to "/#cadastro", alert: " Este email já está cadastrado"
		  end
		end
	end


  protected

	def after_sign_up_path_for(resource)
		'/#cadastro'
	end

	def after_sign_in_path_for(resource)
	    edit_perfil_url(current_user.id)
	end

	def after_sign_out_path_for(resource)
	  	'/entrar'
	end

  # def after_resetting_password_path_for(resource)
  #   entrar_url
  # end


end
