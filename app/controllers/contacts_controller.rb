class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render template: 'contacts/confirm'
    else
      redirect_to new_contact_path, alert: @contact.errors.full_messages.join(", ")
    end
  end

  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to done_contacts_path
    else
      flash[:alert] = @contact.errors.full_messages.join(", ")
      @contact = Contact.new
      render :new
    end
  end

  def done
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone_number, :message)
  end
end