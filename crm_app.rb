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

class Contact < CRM
	def initialize(id, first_name, last_name, email, note)
		@id = id
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

	def add_new_contact
	end

	def modify_existing_contact
	end

	def display_all_contacts
	end

	def display_one_contact
	end

	def display_certain_attribute
	end

	def delete_program
	end

	def exit_program
	end
end

class Rolodex
end

a_crm_app = CRM.new
a_crm_app.print_main_menu