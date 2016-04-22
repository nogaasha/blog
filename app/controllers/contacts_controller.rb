class ContactsController < ApplicationController
  def new   #получить страницу с сервера
   end 

   def create
       @contact = Contact.new(contact_params)    #отправить данные на сервер
       if @contact.valid?
         @contact.save
       else
         render action: 'new'
       end  

   end

   private
   def contact_params
      params.require(:contact).permit(:email, :message)
   end   
end
