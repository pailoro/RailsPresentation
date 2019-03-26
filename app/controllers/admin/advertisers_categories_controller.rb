module Admin
  class AdvertisersCategoriesController < SuperAdminController
    before_action :set_advertisers_category, only: [:show, :edit, :update, :destroy]

    # GET /advertisers_categories
    # GET /advertisers_categories.json
    def index
      @advertisers_categories = AdvertisersCategory.all
    end

    # GET /advertisers_categories/1
    # GET /advertisers_categories/1.json
    def show
    end

    # GET /advertisers_categories/new
    def new
      @advertisers_category = AdvertisersCategory.new
    end

    # GET /advertisers_categories/1/edit
    def edit
    end

    # POST /advertisers_categories
    # POST /advertisers_categories.json
    def create
      @advertisers_category = AdvertisersCategory.new(advertisers_category_params)

      respond_to do |format|
        if @advertisers_category.save
          format.html { redirect_to advertisers_categories_url, notice: 'Categoria adicionada.' }
          format.json { render :show, status: :created, location: @advertisers_category }
        else
          format.html { render :new }
          format.json { render json: @advertisers_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /advertisers_categories/1
    # PATCH/PUT /advertisers_categories/1.json
    def update
      respond_to do |format|
        if @advertisers_category.update(advertisers_category_params)
          format.html { redirect_to advertisers_categories_url, notice: 'Categoria atualizada.' }
          format.json { render :show, status: :ok, location: @advertisers_category }
        else
          format.html { render :edit }
          format.json { render json: @advertisers_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /advertisers_categories/1
    # DELETE /advertisers_categories/1.json
    def destroy
      @advertisers_category.destroy
      respond_to do |format|
        format.html { redirect_to advertisers_categories_url, notice: 'Categoria removida.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_advertisers_category
        @advertisers_category = AdvertisersCategory.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def advertisers_category_params
        params.require(:advertisers_category).permit(:name, :slug)
      end
  end
end