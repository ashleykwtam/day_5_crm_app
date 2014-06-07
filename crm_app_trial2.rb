require_relative "rolodex_trial2"

class CRM

	attr_accessor :name

	def initialize(name)
		@name = name
		# @rolodex = Rolodex.new
		puts "Welcome to #{name}'s CRM."
	end

	def self.run(name)
		crm = CRM.new(name)
		crm.main_menu
	end

	def main_menu
		print_main_menu
		call_option(gets.chomp.to_i)
	end

	def print_main_menu
		puts "Choose an action for your contact book: "
		puts "[1] Add a new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Display all contacts"
		puts "[4] Delete an existing contact"
		puts "[5] Exit the program"
	end

	def call_option(user_selection)
		case user_selection
		when 1 then add_new_contact
		when 2 then modify_contact
		when 3 then display_contacts
		when 4 then delete_contact
		when 5 then exit_program
		end
	end

	def get_user_info
		print "Enter the first name: "
		first_name = gets.chomp
		print "Enter the last name: "
		last_name = gets.chomp
		print "Enter an email address: "
		email = gets.chomp
		print "Enter a note: "
		note = gets.chomp
	end

	def add_new_contact
		get_user_info
		@rolodex.add_contact(Contact.new(first_name, last_name, email, note))
		main_menu
	end

	def modify_contact
	end

	def display_contacts
	end

	def delete_contact
	end

	def exit_program
	end

end


CRM.run("yolo")