# your code goes here
#require 'pry'

class Person

	attr_accessor :happiness, :bank_account
	attr_reader :name, :min_points, :max_points, :hygiene
	#attr_writer

	@@people = []
	@@min_points = 0
	@@max_points = 10

	def initialize(name)
		@name = name
		@@people << name

		@happiness = 8
		@hygiene = 8
		@bank_account = 25

		#@max_points = 10
		#@min_points = 0
	end


	def hygiene=(points)
		@hygiene = points
		if @hygiene > 10
			@hygiene = @@max_points
		elsif @hygiene < 0
			@hygiene = @@min_points
		else
			@hygiene
		end
	end
	

	def happiness=(points)
		@happiness = points
		if @happiness > 10
			@happiness = @@max_points
		elsif @happiness <= 0
			@happiness = @@min_points
		else
			@happiness
		end
	end
	

	def happy?
		if @happiness > 7
			true
		else
			false
		end
	end

	def clean?
		if @hygiene > 7
			true
		else
			false
		end
	end

	def get_paid(salary)
		@bank_account = self.bank_account + salary
		"all about the benjamins"
	end


	def take_bath
		@hygiene += 4
		self.hygiene=(@hygiene)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		@happiness += 2
		self.happiness=(@happiness)
		@hygiene -= 3
		self.hygiene=(@hygiene)
		"♪ another one bites the dust ♫"
	end

	

	def call_friend(friend)
		@happiness += 3
		self.happiness=(@happiness)
		friend_happiness = friend.happiness + 3
		friend.happiness=(friend_happiness)
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(human, topic)
		if topic == "politics"
			@happiness -= 2
			self.happiness=(@happiness)
			other_happiness = human.happiness - 2
			human.happiness=(other_happiness)
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			@happiness += 1
			self.happiness=(@happiness)
			other_happiness = human.happiness + 1
			human.happiness=(other_happiness)
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end
end


