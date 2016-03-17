class HomeController < ApplicationController

  def index
    @blog = BlogSimple.all.first
    respond_to do |format|
      format.html
    end
  end

  def about
    respond_to do |format|
      format.html
    end
  end

  def projects
    respond_to do |format|
      format.html
    end
  end
  
end
