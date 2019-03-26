# class OmniauthController < Devise::OmniauthCallbacksController
class OmniauthController < ApplicationController
	def facebook
	  @user = User.create_from_provider_data(request.env['omniauth.auth'])
	  if @user.persisted?
	    flash[:alert] = 'Você fez login com o Facebook'
	    sign_in(@user) 
	    redirect_to "/meus-dados/editar"
	  else
	    flash[:error] = 'Houve um problema de acesso ao utilizar o Facebook. Por favor tente novamente.'
	    redirect_to root_url
	  end 
	end

	def google_oauth2
	  @user = User.create_from_provider_data(request.env['omniauth.auth'])
	  if @user.persisted?
	    flash[:alert] = 'Você fez login com o Google'
	    sign_in(@user) 
	    redirect_to "/meus-dados/editar"
	  else
	    flash[:error] = 'Houve um problema ao utilizar o Google. Por favor tente novamente.'
	    redirect_to root_url
	  end 
	end

	def failure
	  flash[:alert] = 'Houve um problema ao se registrar. Por favor tente novamente.' 
	  redirect_to root_url
	end


end
