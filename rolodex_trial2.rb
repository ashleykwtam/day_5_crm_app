class Rolodex

	attr_accessor :first_name, :last_name, :email, :note
	attr_reader :contacts

	def initialize
		@contacts = []
		@id = 1
	end

	def add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
	end

	def display_contact
		@contacts.each { |contact| puts contact }
	end

	def delete_contact
		print "Enter the ID number of the contact you wish to delete: "
		contact_to_delete = gets.chomp
		@contacts.delete_at(contact_to_delete -1)
	end

end