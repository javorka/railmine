class IssueCommentsController < ApplicationController
  before_action :set_issue_comment, only: [:show, :edit, :update, :destroy]
  before_action :authorize

  # GET /issue_comments
  # GET /issue_comments.json
  def index
    @issue_comments = IssueComment.all
  end

  # GET /issue_comments/1
  # GET /issue_comments/1.json
  def show
  end

  # GET /issue_comments/new
  def new
    @issue_comment = IssueComment.new
  end

  # GET /issue_comments/1/edit
  def edit
  end

  # POST /issue_comments
  # POST /issue_comments.json
  def create
    @issue_comment = IssueComment.new(issue_comment_params)

    respond_to do |format|
      if @issue_comment.save
        format.html { redirect_to project_issue_path(@issue_comment.issue.project, @issue_comment.issue), notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @issue_comment }
      else
        format.html { render :new }
        format.json { render json: @issue_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue_comments/1
  # PATCH/PUT /issue_comments/1.json
  def update
    respond_to do |format|
      if @issue_comment.update(issue_comment_params)
        format.html { redirect_to @issue_comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue_comment }
      else
        format.html { render :edit }
        format.json { render json: @issue_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_comments/1
  # DELETE /issue_comments/1.json
  def destroy
    @issue_comment.destroy
    respond_to do |format|
      format.html { redirect_to issue_comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_comment
      @issue_comment = IssueComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_comment_params
      params.require(:issue_comment).permit(:comment, :user_id, :issue_id)
    end
end
