module Admin
	class AdministradoresController < SuperAdminController
	  before_action :set_user, only: [:show, :edit, :update, :destroy]
		  
		  def index
	    	@usuarios = AdminUser.all
	      end

	    	def show
	      end

	      def new
	        @usuario = AdminUser.new
	      end

	      def edit
	      end

	      def create
	        @usuario = AdminUser.new(user_params)

	        # @usuario = AdminUser.new(:name => params[:name], :email => params[:email], :password => params[:password], 
	        	# :password_confirmation => params[:password_confirmation], :type => params[:type])
	        
	        # @usuario = AdminUser.invite!(:email => params[:email], :name => params[:name], :role => params[:role])

	        respond_to do |format|
	          if @usuario.save
	            format.html { redirect_to '/admin/administradores', notice: 'Usuário cadastrado com sucesso' }
	            #format.json { render :show, status: :created, location: @marca }
	          else
	            format.html { render :new }
	            format.json { render json: @usuario.errors, status: :unprocessable_entity }
	          end
	        end
	      end

	      def update
	        respond_to do |format|
	          if @usuario.update(user_params)
	            format.html { redirect_to '/admin/meus-dados/editar', notice: 'Usuário atualizado com sucesso' }
	            #format.json { render :show, status: :ok, location: @marca }
	          else
	            format.html { render :edit }
	            format.json { render json: @usuario.errors, status: :unprocessable_entity }
	          end
	        end
	      end

	      def destroy
	        @usuario.destroy
	        respond_to do |format|
	          format.html { redirect_to '/admin/administradores', notice: 'Usuário excluído com sucesso' }
	          format.json { head :no_content }
	        end
	      end


	      private
	    # Use callbacks to share common setup or constraints between actions.
	    def set_user
	      @usuario = AdminUser.find(params[:id])
	    end

	    # Never trust parameters from the scary internet, only allow the white list through.
	    def user_params
	      params.require(:admin_user).permit(:last_sign_in_ip, :last_sign_in_ip, :current_sign_in_ip, :last_sign_in_at,
	      							 :current_sign_in_at, :sign_in_count, :remember_created_at, 
	      							 :email, :encrypted_password, :password, :reset_password_token,
	      							 :name, :avaliador, :type, :avatar, :role)
	    end
	end
end