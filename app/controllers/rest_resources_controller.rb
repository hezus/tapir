class RestResourcesController < ApplicationController
  # GET /rest_resources
  # GET /rest_resources.json
  def index
    @rest_resources = RestResource.all

    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @rest_resources }
    end
  end

  # GET /rest_resources/1
  # GET /rest_resources/1.json
  def show
    @rest_resource = RestResource.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @rest_resource }
    end
  end
end
