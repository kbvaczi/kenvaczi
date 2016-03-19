class ErrorController < ApplicationController

  def show
    case params[:code]
    when "404"
      @message = "The page you were looking for doesn't exist"
    when "422"
      @message = "The change you wanted was rejected"
    else 
      @message = "We're sorry, but something went wrong"
    end
    respond_to do |format|
      format.html { render layout: "plain" }
    end
  end
  
end
