class Rolodex
	attr_accessor :first_name, :last_name, :email, :note
	attr_reader :contacts

	def initialize
		@contacts = []
		@id = 1
	end

	def add_contact(contact)
		contact.id = @id
		# @contacts << @id
		@contacts << contact
		@id += 1
	end

	def find_contact(contact_id)
		@contacts.find { |contact| contact.id == contact_id}  # find iterates over all the contacts and passes it in the block until contact to modify matches the parameter
		# this line of code is equivalent to the below:
		# @contacts.each do |contact|
		# 	if contact_id == id
		# 		return contact
		# 		break
		# 	end
	end

	def display_contact
		@contacts.each { |contact| puts contact }
	end

		def contact_index(contact)
		@contacts.index(contact)
	end

		def delete_contact
		print "Enter the ID of the contact you want to delete: "
		contact_to_delete = gets.chomp.to_i
		@contacts.delete_at(contact_to_delete - 1)
	end


	def modify_contact
		print "Enter the ID number you want to modify: "
		contact_to_modify = gets.chomp.to_i
		puts "Which attribute do you want to modify?"
		puts "[0] First name"
		puts "[1] Last name"
		puts "[2] Email"
		puts "[3] Notes"
		print "Enter a number: "
		attribute_index = gets.chomp.to_i
		attribute = [:first_name=, :last_name=, :email=, :note=][attribute_index]
		print "Enter what you want to change: "
		new_value = gets.chomp
		find_contact(contact_to_modify).send(attribute, new_value)

		# contact.send(:first_name) # => "Kash"
		# contact.first_name # => "Kash"

		# attribute = :first_name
		# contact.attribute 	# if you use .attribute, it will return an error trying to call attribute method which there is none
		# contact.send(attribute) # => contact.first_name 
		# instead, .send is a valid method that will call upon attribute and set it to firstname value


		# case attribute_to_change
		# when 1
		# 	find_contact(contact_to_modify).first_name = new_value
		# when 2
		# 	find_contact(contact_to_modify).last_name = new_value
		# when 3
		# 	find_contact(contact_to_modify).email = new_value
		# when 4
		# 	find_contact(contact_to_modify).note = new_value
		# end
	end

	# def change_attribute
	# 	@item_change = gets.chomp.to_i
	# 	print "Enter what you want to change: "
	# 	new_value = gets.chomp
	# 	case_attribute
	# end

	def case_attribute
		# props = [:first_name, :last_name, :email, :note]

		# @contact.send(props[@item_change - 1])
		
		# if @item_change == 1
		# 	contact.first_name = new_value
		# elsif @item_change == 2
		# 	contact.last_name = new_value
		# elsif  @item_change == 3
		# 	contact.email = new_value
		# elsif @item_change == 4 
		# 	contact.note = new_value
		# end
	end

	# def display_attribute(attribute)
	# 	case attribute
	# 	when 1 then contacts.each { |contact| put contact.first_name.capitalize! }
	# 	when 2 then contacts.each { |contact| put contact.last_name.capitalize! }
	# 	when 3 then contacts.each { |contact| put contact.email }
	# 	when 4 then contacts.each { |contact| put contact.note }
	# 	end
	# end
end