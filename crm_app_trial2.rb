require_relative "rolodex_trial2"
require_relative "contact_trial2"

class CRM

	attr_accessor :name

	def self.run(name)
		crm = CRM.new(name)
		crm.main_menu
	end

	def initialize(name)
		@name = name
		@rolodex_trial2 = Rolodex.new
		puts "Welcome to #{name}'s CRM."
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

	def get_user_info								# if use get_user_info in add_new_contact the scope cannot work for @rolodex.add_contact
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
		print "Enter the first name: "
		first_name = gets.chomp
		print "Enter the last name: "
		last_name = gets.chomp
		print "Enter an email address: "
		email = gets.chomp
		print "Enter a note: "
		note = gets.chomp
		@rolodex_trial2.add_contact(Contact.new(first_name, last_name, email, note))
		main_menu
	end

	def modify_contact
	end

	def display_contacts
		@rolodex_trial2.display_contact
		main_menu
	end

	def delete_contact
		@rolodex_trial2.display_contact
		@rolodex_trial2.delete_contact
		main_menu
	end

	def exit_message
		print "You are now exiting #{name}'s contact book. Goodbye."
	end

	def exit_program
		exit_message
		exit
		# print "\e[H\e[2J"
	end

end


CRM.run("yolo")