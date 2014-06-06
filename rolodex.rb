class Rolodex
	attr_reader :contacts

	def initialize
		@contacts = []
		@id = 1
	end

	def add_contact(contact)
		@contacts << contact
		contact.id = @id
		@id += 1
	end

	def find_contact(contact_id)
		@contacts.find { |contact| contact_id == id }
	end

	def display_contact
		@contacts.each { |contact| puts "#{contact.first_name.capitalize} #{contact.last_name.capitalize}, Email: #{contact.email}, Notes: #{contact.note}"}
	end
	
	def contact_index(contact)
		@contacts.index(contact)
	end

	def modify_contact
		@contacts[contact_index(find_contact(contact_id))] = contact
	end

	def delete_contact
		@contacts.delete_at[contact_index(find_contact(contact_id))]
	end

	def display_attribute(attribute)
		case attribute
		when 1 then contacts.each { |contact| put contact.first_name.capitalize! }
		when 2 then contacts.each { |contact| put contact.last_name.capitalize! }
		when 3 then contacts.each { |contact| put contact.email }
		when 4 then contacts.each { |contact| put contact.note }
		end
	end
end