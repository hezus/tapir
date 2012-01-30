class RestObjectsController < ApplicationController
  # GET /rest_objects
  # GET /rest_objects.json
  def index
    @rest_objects = RestObject.all

    respond_to do |format|
      format.html #index.html.haml
      format.json { render json: @rest_objects }
    end
  end

  # GET /rest_objects/1
  # GET /rest_objects/1.json
  def show
    @rest_object = RestObject.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @rest_object }
    end
  end
end
