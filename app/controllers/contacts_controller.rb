class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contact_path(@contact), notice: 'Contact was successfully created.'
    else
      render 'new'
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:email, :subject, :description, :first_name, :last_name)
  end

end
