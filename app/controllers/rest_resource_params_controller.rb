class RestResourceParamsController < ApplicationController
  # GET /rest_resource_params
  # GET /rest_resource_params.json
  def index
    @rest_resource_params = RestResourceParam.all

    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @rest_resource_params }
    end
  end

  # GET /rest_resource_params/1
  # GET /rest_resource_params/1.json
  def show
    @rest_resource_param = RestResourceParam.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @rest_resource_param }
    end
  end
end
