class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update]

  # GET /issues
  # GET /issues.json
  def index
    @issues = Issue.all
  end

  # GET /issues/1
  # GET /issues/1.json
  def show
    @sprint = params[:sprint]
    @project = Project.find(params[:project_id])
  end

  # GET /issues/new
  def new
    @issue = Issue.new
    @issue.project = Project.find(params[:project_id])
  end

  # GET /issues/1/edit
  def edit
    @project = Project.find(params[:project_id])
  end

  # POST /issues
  # POST /issues.json
  def create
    ip = issue_params
    ip[:state] = ip[:state].to_i
    ip[:issue_type] = ip[:issue_type].to_i
    @issue = Issue.new(ip)

    respond_to do |format|
      if @issue.save
        format.html { redirect_to project_issue_path(@issue.project, @issue), notice: 'Issue was successfully created.' }
        format.json { render :show, status: :created, location: @issue }
      else
        format.html { render :new }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issues/1
  # PATCH/PUT /issues/1.json
  def update
    respond_to do |format|
      ip = issue_params
      ip[:state] = ip[:state].to_i
      ip[:issue_type] = ip[:issue_type].to_i
      if @issue.update(ip)
        format.html { redirect_to project_issue_path(@issue.project, @issue), notice: 'Issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue }
      else
        format.html { render :edit }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1
  # DELETE /issues/1.json
  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to issues_url, notice: 'Issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      @issue = Issue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_params
      params.require(:issue).permit(:name, :description, :estimation, :issue_type, :state, :sprint_id, :project_id, :user_id)
    end
end
