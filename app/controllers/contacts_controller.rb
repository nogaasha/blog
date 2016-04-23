class ContactsController < ApplicationController
  def new   # этот метод получает страницу с сервера
   end 

   def create
       @contact = Contact.new(contact_params)    #этот action отправляет данные на сервер
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
