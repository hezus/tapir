class OverviewController < ApplicationController
  def welcome
    @rest_objects = RestObject.all
    @examples = Example.all
    respond_to do |format|
       format.html {render 'overview/welcome'}
    end
  end
end
