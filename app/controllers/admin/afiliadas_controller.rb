module Admin
  class AfiliadasController < SuperAdminController
    before_action :set_afiliada, only: [:show, :edit, :update, :destroy]

    # GET /afiliadas
    # GET /afiliadas.json
    def index
      @afiliadas = Afiliada.all
    end

    # GET /afiliadas/1
    # GET /afiliadas/1.json
    def show
    end

    # GET /afiliadas/new
    def new
      @afiliada = Afiliada.new
    end

    # GET /afiliadas/1/edit
    def edit
    end

    # POST /afiliadas
    # POST /afiliadas.json
    def create
      @afiliada = Afiliada.new(afiliada_params)

      respond_to do |format|
        if @afiliada.save
          format.html { redirect_to afiliadas_url, notice: 'Afiliada criada.' }
          format.json { render :show, status: :created, location: @afiliada }
        else
          format.html { render :new }
          format.json { render json: @afiliada.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /afiliadas/1
    # PATCH/PUT /afiliadas/1.json
    def update
      respond_to do |format|
        if @afiliada.update(afiliada_params)
          format.html { redirect_to afiliadas_url, notice: 'Afiliada atualizada.' }
          format.json { render :show, status: :ok, location: @afiliada }
        else
          format.html { render :edit }
          format.json { render json: @afiliada.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /afiliadas/1
    # DELETE /afiliadas/1.json
    def destroy
      @afiliada.destroy
      respond_to do |format|
        format.html { redirect_to afiliadas_url, notice: 'Afiliada removida.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_afiliada
        @afiliada = Afiliada.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def afiliada_params
        params.require(:afiliada).permit(:name, :razao_social, :phone, :cnpj, :estado, :regiao, :emissora_id, :logo)
      end
  end
end