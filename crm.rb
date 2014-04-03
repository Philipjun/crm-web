
require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'

@@rolodex = Rolodex.new

get "/" do
  @crm_app_name = "My CRM"
  erb :index
end

get '/contacts' do
  erb :new_contacts
end

get '/contacts/:id/' do
    @id = params [:id]
    erb :id
end


get '/contacts/id/edit' do
  @@id = params [:id]
  erb :edit_id
end

post 'contacts/:id/edit' do
  @@id = params[:id]
  erb :contacts
end

post '/contacts' do
  new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  @@rolodex.add_contact(new_contact)
  redirect to('/contacts')
end

