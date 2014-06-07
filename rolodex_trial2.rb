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

	def modify_contact
		print "Enter the ID number of the contact you wish to modify: "
		contact_to_modify = gets.chomp.to_i 
		print "What do you wish to modify? "
		print "[1] First name "
		print "[2] Last name "
		print "[3] Email "
		puts "[4] Note "
		item_to_modify = gets.chomp.to_i
		print "Enter a value: "
		new_value = gets.chomp
		
		case item_to_modify
		when 1 
			find_contact(contact_to_modify).first_name = new_value
		when 2
			find_contact(contact_to_modify).last_name = new_value
		when 3
			find_contact(contact_to_modify).email = new_value
		when 4
			find_contact(contact_to_modify).note = new_value
		end
	end

	def find_contact(x)
		@contacts.find { |contact| contact.id == x }
	end

end