module Admin
	class UsuariosController < SuperAdminController
	  before_action :set_user, only: [:show, :edit, :update, :destroy, :block_user]
		  
		  def index
	    	@usuarios = User.all
	      end

	      def show
	      end

	      def block_user
	      	if @usuario.block
	      		@usuario.block = false
	      		@usuario.save
	      		redirect_to usuarios_url, notice: "O usuário #{@usuario.name} foi <strong>bloqueado</strong> com sucesso"
	      	else
	      		@usuario.block = true
	      		@usuario.save
	      		redirect_to usuarios_url, notice: "O usuário #{@usuario.name} foi <strong>desbloqueado</strong> com sucesso"
	      	end
	      end

	      private
	      # Use callbacks to share common setup or constraints between actions.
	      def set_user
	        @usuario = User.find(params[:id])
	      end
	end
end