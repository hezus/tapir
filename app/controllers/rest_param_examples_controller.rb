class RestParamExamplesController < ApplicationController
  # GET /rest_param_examples
  # GET /rest_param_examples.xml
  def index
    @rest_param_examples = RestParamExample.all

    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @rest_param_examples }
    end
  end

  # GET /rest_param_examples/1
  # GET /rest_param_examples/1.xml
  def show
    @rest_param_example = RestParamExample.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.xml  { render :xml => @rest_param_example }
    end
  end
end
