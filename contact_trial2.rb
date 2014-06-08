class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
		@id = id
	end

	def to_s  	# where am i calling this??
		"Contact ID number is #{id}" "\n" <<
		"Contact info is: #{first_name} #{last_name}, Email: #{email}, Note: #{note}" <<
		"\n"
	end
end
