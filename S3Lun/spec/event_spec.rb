require_relative '../lib/event'

describe Event do
	before (:each) do
		Object.send(:remove_const, 'Event')
		load 'event.rb'
	end

	describe 'initializer' do

		it 'creates an event' do
			myevent = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
			expect(myevent.class).to eq(Event)
		end
	end

	describe 'instance method' do 
		describe 'postpone_24h' do
			it "postpone the event to 24h" do
				myevent = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
				start_date = Time.parse(start_date)
				start_date = "2019-01-13 09:00"
				expect(myevent.postpone_24h).to eq("2019-01-14 9:00")
			end
		end
	end
end
