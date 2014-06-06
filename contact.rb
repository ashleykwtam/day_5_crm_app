class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note
	
	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end


	def display_all_contacts
	end

	def display_one_contact
	end

	def display_certain_attribute
	end

	def delete_program
	end

	def exit_program
	end
end