class ChartsController < ApplicationController
  def index
    render :file => index.html.erb, :content_type => application/json

  end

end
