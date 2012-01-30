class RestDatatypesController < ApplicationController
  # GET /rest_datatypes
  # GET /rest_datatypes.xml
  def index
    @rest_datatypes = RestDatatype.all

    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @rest_datatypes }
    end
  end

  # GET /rest_datatypes/1
  # GET /rest_datatypes/1.xml
  def show
    @rest_datatype = RestDatatype.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.xml  { render :xml => @rest_datatype }
    end
  end
end
