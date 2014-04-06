class Contact

@@counter = 1000

	attr_accessor :note, :first_name, :id, :last_name, :email
	

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note

		@id = Contact.get_id
		end


	def self.get_id
		@@counter += 1
		@@counter
	end

def to_s
		"ID: #{@id}\nFirst Name: #{@first_name}\nLast Name: #{@last_name}\nEmail: #{@email}\nNotes: #{@note}"
	end

end

post "/contacts" do
	puts params
	new_contact = Contact.new(params[:first_name])
	@contacts << new_contact
end