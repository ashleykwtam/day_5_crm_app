require_relative "contact"		# require_relative calls other files and inputs into program
require_relative "rolodex"

class CRM

	attr_accessor :name

	def self.run(name)			# self is a class method
		crm = CRM.new(name)
		crm.main_menu
	end

	def initialize(name)		# need an initialize method to call on name
		@name = name
		@rolodex = Rolodex.new
		puts "Welcome to #{name}'s CRM."	# only outputs once
	end

	def main_menu
		print_main_menu
		call_option(gets.chomp.to_i)		# variable passed into a method called call_option
	end

	def print_main_menu
		puts "Choose the following action for your contact book: "
		puts "[1] Add a new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Display all contacts"
		puts "[4] Display one contact"
		puts "[5] Display a certain attribute"
		puts "[6] Delete a contact"
		puts "[7] Exit"
	end

	def call_option(user_selected)		# this method calls on other methods based on the number
		case user_selected							# changed to case method
		when 1 then add_new_contact
		when 2 then modify_existing_contact
		when 3 then display_all_contacts
		when 4 then display_one_contact
		when 5 then display_certain_attribute
		when 6 then delete_contact
		when 7 then exit_program
		end
	end

	def create_new_contact							# need to put method in the same class
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

	def add_new_contact
		contact = create_new_contact
		puts contact
		puts "Confirm adding new contact: [Y or N]"
		case gets.chomp.downcase
		when "Y"
			@rolodex.add_contact(contact)
			main_menu
		when "N"
			add_new_contact
		end
		main_menu
	end

	def modify_existing_contact
		display_one_contact
		puts "Is this the contact you want to edit? [Y or N or exit]"
		case gets.chomp.downcase
		when "Y"
			@rolodex.modify_contact(contact_id, create_new_contact)
		when "N"
			modify_existing_contact
		when "exit"
			main_menu
		end
		main_menu
	end

	def display_contact
		contact_id = gets.chomp.to_i
		puts @rolodex.find_contact(contact_id)
		# contact_id
	end

	def display_all_contacts
		@rolodex.display_contact.each { |contact| puts contact.to_s }
		main_menu
	end

	def display_one_contact
		print "Enter contact ID: "
		display_contact
		main_menu
	end

	def print_attribute_list
		puts "Which attribute do you want to modify?"
		puts "[1] First name"
		puts "[2] Last name"
		puts "[3] Email"
		puts "[4] Notes"
	end

	def display_certain_attribute
		print_attribute_list
		choice = gets.chomp.to_i
		@rolodex.display_attribute(choice)
		main_menu
	end

	def delete_contact
		print "Enter the ID of the contact you want to delete: "
		contact_id = display_one_contact
		puts "Is this the contact you want to delete? [Y or N or exit]"
		case gets.chomp.downcase
		when "Y"
			@rolodex.delete_contact(contact_id)
		when "N"
			delete_contact
		when "exit"
			main_menu
		end
		main_menu
	end

	def exit_program
		puts "\e[H\e[2J"
	end

end


CRM.run("my CRM")