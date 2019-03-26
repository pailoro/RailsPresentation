module Admin
  class EmissorasController < SuperAdminController
    before_action :set_emissora, only: [:show, :edit, :update, :destroy]

    # GET /emissoras
    # GET /emissoras.json
    def index
      @emissoras = Emissora.all
    end

    # GET /emissoras/1
    # GET /emissoras/1.json
    def show
    end

    # GET /emissoras/new
    def new
      @emissora = Emissora.new
    end

    # GET /emissoras/1/edit
    def edit
    end

    # POST /emissoras
    # POST /emissoras.json
    def create
      @emissora = Emissora.new(emissora_params)

      respond_to do |format|
        if @emissora.save
          format.html { redirect_to emissoras_url, notice: 'Emissora criada.' }
          format.json { render :show, status: :created, location: @emissora }
        else
          format.html { render :new }
          format.json { render json: @emissora.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /emissoras/1
    # PATCH/PUT /emissoras/1.json
    def update
      respond_to do |format|
        if @emissora.update(emissora_params)
          format.html { redirect_to emissoras_url, notice: 'Emissora atualizada.' }
          format.json { render :show, status: :ok, location: @emissora }
        else
          format.html { render :edit }
          format.json { render json: @emissora.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /emissoras/1
    # DELETE /emissoras/1.json
    def destroy
      @emissora.destroy
      respond_to do |format|
        format.html { redirect_to emissoras_url, notice: 'Emissora removida.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_emissora
        @emissora = Emissora.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def emissora_params
        params.require(:emissora).permit(:name, :photo, :logo)
      end
  end
end