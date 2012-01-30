class KnownIssuesController < ApplicationController
  # GET /known_issues
  # GET /known_issues.json
  def index
    @known_issues = KnownIssue.all

    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @known_issues }
    end
  end

  # GET /known_issues/1
  # GET /known_issues/1.json
  def show
    @known_issue = KnownIssue.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @known_issue }
    end
  end

  # GET /known_issues/new
  # GET /known_issues/new.json
  def new
    @known_issue = KnownIssue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @known_issue }
    end
  end

  # GET /known_issues/1/edit
  def edit
    @known_issue = KnownIssue.find(params[:id])
  end

  # POST /known_issues
  # POST /known_issues.json
  def create
    @known_issue = KnownIssue.new(params[:known_issue])

    respond_to do |format|
      if @known_issue.save
        format.html { redirect_to @known_issue, notice: 'Known issue was successfully created.' }
        format.json { render json: @known_issue, status: :created, location: @known_issue }
      else
        format.html { render action: "new" }
        format.json { render json: @known_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /known_issues/1
  # PUT /known_issues/1.json
  def update
    @known_issue = KnownIssue.find(params[:id])

    respond_to do |format|
      if @known_issue.update_attributes(params[:known_issue])
        format.html { redirect_to @known_issue, notice: 'Known issue was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @known_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /known_issues/1
  # DELETE /known_issues/1.json
  def destroy
    @known_issue = KnownIssue.find(params[:id])
    @known_issue.destroy

    respond_to do |format|
      format.html { redirect_to known_issues_url }
      format.json { head :ok }
    end
  end
end
