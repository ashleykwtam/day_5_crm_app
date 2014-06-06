class Rolodex
	def initialize
		@contacts = []
		@id = 0
	end

	def contacts
		@contacts
	end

	def add_contact(contact)
		@contacts << contact
		contact.id = @id
		@id += 1
	end

	def find_contact(contact_id)
	end
end