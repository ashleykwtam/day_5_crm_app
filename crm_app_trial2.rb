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

	def clear_screen
		puts "\e[H\e[2J"
	end

	def main_menu
		# clear_screen
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
		puts "\n"
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
		clear_screen
		print "Enter the first name: "
		first_name = gets.chomp
		print "Enter the last name: "
		last_name = gets.chomp
		print "Enter an email address: "
		email = gets.chomp
		print "Enter a note: "
		note = gets.chomp
		puts "Your added contact is #{first_name.capitalize!} #{last_name.capitalize!}, Email: #{email}, Notes: #{note}."
		puts "\n"
		@rolodex_trial2.add_contact(Contact.new(first_name, last_name, email, note))
		main_menu
	end

	def modify_contact
		clear_screen
		@rolodex_trial2.display_contact
		puts "\n"
		@rolodex_trial2.modify_contact
		puts "\n"
		main_menu
	end

	def display_contacts
		clear_screen
		@rolodex_trial2.display_contact
		puts "\n"
		main_menu
	end

	def delete_contact
		clear_screen
		@rolodex_trial2.display_contact
		puts "\n"
		@rolodex_trial2.delete_contact(Contact.new(@first_name, @last_name, @email, @note))
		puts "\n"
		main_menu
	end

	def exit_message
		clear_screen
		print "You are now exiting #{name}'s contact book. Goodbye." << "\n"
	end

	def exit_program
		exit_message
		exit 			# exit is just able to exit somehow
		# print "\e[H\e[2J"
	end

end


CRM.run("Candy")