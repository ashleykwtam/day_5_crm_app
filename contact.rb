class Contact
	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

	def add_new_contact
		print "Enter first name: "
		first_name = gets.chomp
		print "Enter last name: "
		last_name = gets.chomp
		print "Enter email address: "
		email = gets.chomp
		print "Enter a note: "
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
	end

	def modify_existing_contact
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