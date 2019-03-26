class UsersReportsController < SuperAdminController
  before_action :set_users_report, only: [:show, :edit, :update, :destroy]

  # GET /users_reports
  # GET /users_reports.json
  def index
    @users_reports = UsersReport.all
  end

  # GET /users_reports/1
  # GET /users_reports/1.json
  def show
  end

  # GET /users_reports/new
  def new
    @users_report = UsersReport.new
  end

  # GET /users_reports/1/edit
  def edit
  end

  # POST /users_reports
  # POST /users_reports.json
  def create
    @users_report = UsersReport.new(users_report_params)

    respond_to do |format|
      if @users_report.save
        format.html { redirect_to @users_report, notice: 'Users report was successfully created.' }
        format.json { render :show, status: :created, location: @users_report }
      else
        format.html { render :new }
        format.json { render json: @users_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_reports/1
  # PATCH/PUT /users_reports/1.json
  def update
    respond_to do |format|
      if @users_report.update(users_report_params)
        format.html { redirect_to @users_report, notice: 'Users report was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_report }
      else
        format.html { render :edit }
        format.json { render json: @users_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_reports/1
  # DELETE /users_reports/1.json
  def destroy
    @users_report.destroy
    respond_to do |format|
      format.html { redirect_to users_reports_url, notice: 'Users report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_report
      @users_report = UsersReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_report_params
      params.require(:users_report).permit(:user_id, :local, :lat, :long, :canal)
    end
end
