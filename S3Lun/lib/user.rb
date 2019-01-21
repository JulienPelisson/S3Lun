require 'pry'

#La classe user est composé d'un nom et d'un email. On doit pouvoir les modifier n'importe quand
class User
	attr_accessor :email, :name
	@@all_users = []


	def initialize(email_to_save)
		@name = name
		@email = email_to_save
		@@all_users << self 
	end

	def self.all
		return @@all_users
	end

	def self.find_by_email(email)
		@@all_users.each do |user|
			return user if user.email == email
		end
	end
end
