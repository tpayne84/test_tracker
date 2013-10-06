class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]
  helper_method :get_course_name
  # GET /records
  # GET /records.json
  def index
      @records = Record.all
  end

  def get_course_name(course_id)
  @course = Course.find(course_id)
  @course.name
  end

  # GET /records/1
  # GET /records/1.json
  def show
    @course = Course.find(@record.course_id)
  end

  # GET /records/new
  def new
    @record = Record.new
    @clients = Client.all
    @groups = Group.all
    @users = User.all
  end

  # GET /records/1/edit
  def edit
  end

  # POST /records
  # POST /records.json
  def create
    @record = Record.new(record_params)
    interval = set_requal(@record)
    @record.requal_date = @record.completed_date + interval.months
    respond_to do |format|
      if @record.save
        format.html { redirect_to @record, notice: 'Record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @record }
      else
        format.html { render action: 'new' }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /records/1
  # PATCH/PUT /records/1.json
  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:course_id, :score, :pass, :completed_date, :user_id, :requal_date)
    end

    def set_requal(record)
      course = Course.find(record.course_id)
      interval = course.requal_interval
    end

end
