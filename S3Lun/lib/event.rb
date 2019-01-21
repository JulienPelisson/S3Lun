require 'pry'
require 'time'

class Event
	
	attr_accessor :start_date, :length, :title, :attendees
	@attendees = []
	
	def initialize(start_date, t, title, invités)
		@start_date = Time.parse(start_date)
		@length = t
		@title = title
		@attendees = invités
	end

	def postpone_24h(start_date)
		report_24h = @start_date + 60 * 60 * 24 
		puts report_24h
	end

	def end_date (start_date, length)
		end_event = @start_date. + length * 60
		puts end_event	
	end

	def is_past(start_date)
		@start_date < Time.now 
	end

	def is_future
		!self.is_past
	end

	def is_soon(start_date)
		t2 = Times.now
		if @start_date > t2 + 30 * 60 && @start_date.now < time.now 
			puts "l'évènement est pour bientôt"
		end
	end
	def to_s
		puts "titre : #{@title}"
		puts "Date de début : #{@start_date}"
		puts "Durée : #{@length}"
		puts "Invités : #{@attendees.join ", "}"
	end
end

machin = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
machin.to_s