require 'pry'

class User
	attr_accessor :email
	@@user_count = 0 

	def initialize(email_to_save)
		if check_email(email_to_save)
		@email = email_to_save
	else 
		puts "TON EMAIL C'EST DE LA MERDE, RENTRE MOI CA MIEUX CONNARD."
		@@user_count = @@user_count + 1  
		puts "Email : Bienvenue !!"
	end
	def self.count
		return @@user_count
	end
end
end



binding.pry
puts "end of file"