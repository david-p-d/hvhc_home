class TableSubmissionsController < ApplicationController
  before_action :set_table_submission, only: [:show, :edit, :update, :destroy]

  # GET /table_submissions
  # GET /table_submissions.json
  def index
    @table_submissions = TableSubmission.all
  end

  # GET /table_submissions/1
  # GET /table_submissions/1.json
  def show
  end

  # GET /table_submissions/new
  def new
    @table_submission = TableSubmission.new
  end

  # GET /table_submissions/1/edit
  def edit
  end

  # POST /table_submissions
  # POST /table_submissions.json
  def create
    @table_submission = TableSubmission.new(table_submission_params)

    respond_to do |format|
      if @table_submission.save
        format.html { redirect_to @table_submission, notice: 'Table submission was successfully created.' }
        format.json { render :show, status: :created, location: @table_submission }
      else
        format.html { render :new }
        format.json { render json: @table_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_submissions/1
  # PATCH/PUT /table_submissions/1.json
  def update
    respond_to do |format|
      if @table_submission.update(table_submission_params)
        format.html { redirect_to @table_submission, notice: 'Table submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_submission }
      else
        format.html { render :edit }
        format.json { render json: @table_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_submissions/1
  # DELETE /table_submissions/1.json
  def destroy
    @table_submission.destroy
    respond_to do |format|
      format.html { redirect_to table_submissions_url, notice: 'Table submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_submission
      @table_submission = TableSubmission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_submission_params
      params.fetch(:table_submission, {})
    end
end
