require_relative '../lib/user'

describe User do
	before (:each) do
		Object.send(:remove_const, 'User')
		load 'user.rb'
	end

	describe 'initializer' do

		it 'creates an user' do
			user = User.new("email@email.com")
			expect(user.email).to eq(email)
		end

		it 'adds one to the @@count global variable' do
			count = User.count
			user = User.new(email)
			expect(user.email).to eq(email)
		end
	end

	describe 'instance method ' do 
		describe 'change password' do
			it "changes password to ##ENCRYPTED##" do
				user = User.new ("email@email.com")
				password = "some string"
				user.change_password(password)
				expect(user.password).to eq("##ENCRYPTED##")
			end
		end

		describe 'show_itself' do
			it "show itself" do 
				user = User.new("email@email.com") 
				user.show_itself
				expect do
					user.show_itself
				end.to output("#{user}\n").to_stdout
			end
		end

		describe 'instance variable' do

			describe '@email' do 
				it 'can be read' do 
					email = "email@email.com"
					user = User.new(email)
					expect(user.email).to eq(email)
				end

				it 'can be written' do 
					email = "email@email.com"
					user = User.new(email)
					email_2 = "email_2@email.com"
					user.email = email_2
					expect(user.email).to eq(email)
					expect(user.email).to eq(email2)
				end
			end
		end

		describe 'class methods' do 
			describe 'self.count' do 
				it 'shows the number of users' do
					user_1 = User.new("email1@email.com")
					user_2 = User.new("email2@email.com")
					user_3 = User.new("email3@email.com")
					expect(user.count).to eq(3)
				end
			end
		end
	end
end