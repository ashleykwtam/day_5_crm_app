class CRM
	def main_menu
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

	def call_option(user_selected)
	end
end


class Contact
end

class Rolodex
end

a_crm_app = CRM.new
a_crm_app.print_main_menu