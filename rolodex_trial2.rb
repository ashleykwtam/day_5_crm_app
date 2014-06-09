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
		puts "Your contact list is: "
		puts "\n"
		@contacts.each do |contact| 
			puts contact
			puts "\n"
		end
	end

	def delete_contact(contact)
		print "Enter the ID number of the contact you wish to delete: "
		contact_to_delete = gets.chomp.to_i
		contact_id = find_contact(contact_to_delete, true)
		@contacts.delete_at(contact_id)


		@contacts.drop(contact_id).each { |contact| contact.id -= 1 }
		# drop changes the ID numbers by losing that contact ID number and returning ID -1 in the array

		# @id = contact.id
		# @contacts << contact
		# @id -= 1
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
		puts "You have modified #{item_to_modify} to #{new_value}."
	end

	def find_contact(x, index = false)
		contact = @contacts.find { |contact| contact.id == x }
		index ? @contacts.index(contact) : contact
	end

end