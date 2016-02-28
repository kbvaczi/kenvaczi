class ContactController < ApplicationController
  
  def new
    @contact = Contact.new(:id => 1)
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      redirect_to root_path, :notice => "Thanks for reaching out!"
    else
      Rails.logger.debug @contact.errors.full_messages.to_sentence
      flash.now[:error] = @contact.errors.full_messages.to_sentence
      render action: 'new'
    end
  end
  
end
