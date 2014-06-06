class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note
	# do not initialize id, set it in the rolodex

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

end