class Contact

@@counter = 1000

	attr_accessor :note, :first_name, :id, :last_name, :email, 
	

	def initialize
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