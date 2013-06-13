class ContactsController < ApplicationController

  def subscribe
    @contacts = Contact.all
  end

  def contactus
    @contacts = Contact.all
  end

  def submit
    @contact = Contact.new
    @contact.email = params[:email]
    @contact.messagetype = "Subscription"
 
    if @contact.save
      redirect_to home_url
    else
      redirect_to subscribe_url notice: "Please try again!"
    end
  end

    def message
    @contact = Contact.new
    @contact.email = params[:email]
    @contact.message = params[:message]
    @contact.messagetype = "Message"
 
    if @contact.save
      redirect_to home_url
    else
      redirect_to contactus_url notice: "Please try again!"
    end
  end

  def summary
    @contacts = Contact.all
  end

  #def destroy
  #  @contact = Contact.find_by_id(params[:email])
  #  @contact.destroy
  #  redirect_to summary_url
  #end

end