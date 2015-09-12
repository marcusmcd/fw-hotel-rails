class ResDatesController < ApplicationController
  before_action :set_res_date, only: [:show, :edit, :update, :destroy]

  # GET /res_dates
  # GET /res_dates.json
  def index
    @res_dates = ResDate.all
  end

  # GET /res_dates/1
  # GET /res_dates/1.json
  def show
  end

  # GET /res_dates/new
  def new
    @res_date = ResDate.new
  end

  # GET /res_dates/1/edit
  def edit
  end

  # POST /res_dates
  # POST /res_dates.json
  def create
    @res_date = ResDate.new(res_date_params)

    respond_to do |format|
      if @res_date.save
        format.html { redirect_to @res_date, notice: 'Res date was successfully created.' }
        format.json { render :show, status: :created, location: @res_date }
      else
        format.html { render :new }
        format.json { render json: @res_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /res_dates/1
  # PATCH/PUT /res_dates/1.json
  def update
    respond_to do |format|
      if @res_date.update(res_date_params)
        format.html { redirect_to @res_date, notice: 'Res date was successfully updated.' }
        format.json { render :show, status: :ok, location: @res_date }
      else
        format.html { render :edit }
        format.json { render json: @res_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /res_dates/1
  # DELETE /res_dates/1.json
  def destroy
    @res_date.destroy
    respond_to do |format|
      format.html { redirect_to res_dates_url, notice: 'Res date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_res_date
      @res_date = ResDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def res_date_params
      params.require(:res_date).permit(:res_date)
    end
end
