require_relative "contact"		# require_relative calls other files and inputs into program
require_relative "rolodex"

class CRM

	def self.run(name)			# self is a class method
		crm = CRM.new(name)
		crm.main_menu
	end

	def initialize(name)		# need an initialize method to call on name
		@name = name
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

	def add_new_contact								# need to put method in the same class
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

end


CRM.run("my CRM")