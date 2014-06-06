require_relative "contact"		# require_relative calls other files and inputs into program
require_relative "rolodex"

class CRM
	def main_menu
		print_main_menu
		user_selected = gets.to_i			# stores a number into user_selected
		call_option(user_selected)		# variable passed into a method called call_option
	end

	def print_main_menu
		puts "[1] Add a new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Display all contacts"
		puts "[4] Display one contact"
		puts "[5] Display a certain attribute"
		puts "[6] Delete a contact"
		puts "[7] Exit"
		puts "Enter a number: "
	end

	def call_option(user_selected)		# this method calls on other methods based on the number
		add_new_contact if user_selected == 1
		modify_existing_contact if user_selected == 2
		display_all_contacts if user_selected == 3
		display_one_contact if user_selected == 4
		display_certain_attribute if user_selected == 5
		delete_contact if user_selected == 6
		exit_program if user_selected == 7
	end
end



a_crm_app = CRM.new
a_crm_app.print_main_menu

adrian = Contact.new("Mr", "Adrian", "Chan", "achan@gmail.com", "my bruh")
puts adrian.add_new_contact