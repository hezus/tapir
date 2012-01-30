class PagesController < ApplicationController
  def home
    @objects = RestObject.all
    @examples = Example.all
    @authentications = Authentication.all
    respond_to do |format|
       format.html {render 'pages/home'}
    end
  end
end
