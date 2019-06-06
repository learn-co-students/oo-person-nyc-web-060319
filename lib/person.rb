# your code goes here
class Person
	attr_reader :name
	attr_accessor :bank_account, :happiness, :hygiene
  	
  	def initialize (name ="nil", bank_account = 25, happiness = 8, hygiene = 8)
    	@name = name
    	@bank_account = bank_account
    	@happiness = happiness
    	@hygiene = hygiene
  	end

  	def happiness=(happiness)
  		if happiness > 10
  			@happiness = 10
  		elsif happiness < 0
  			@happiness = 0
  		else
  			@happiness = happiness
  		end 
  	end

  	def happiness
  		@happiness
  	end

  	def hygiene=(hygiene)
  		if hygiene >10
  			@hygiene = 10
  		elsif hygiene <0
  			@hygiene = 0
  		else
  			@hygiene = hygiene
  		end 
  	end

  	def hygiene
  		@hygiene
  	end

  	def happy?
  		if happiness >7
  			true
  		else
  			false  			
  		end			
  	end

  	def clean?
  		if hygiene >7
  			true
  		else
  			false  			
  		end			
  	end

  	 def get_paid=(salary)
  	 	@bank_account += salary
  	 end

  	def get_paid(salary)
  		self.get_paid = salary
  		"all about the benjamins"
  	end

  	def take_bath
  		temp_hygiene = @hygiene+4
  		self.hygiene = temp_hygiene
  		"♪ Rub-a-dub just relaxing in the tub ♫"
  	end

  	def work_out
  		temp_hygiene2 = @hygiene-3
  		self.hygiene = temp_hygiene2
  		temp_happiness = @happiness + 2
  		self.happiness = temp_happiness
  		"♪ another one bites the dust ♫"
  	end

  	def call_friend(friend)
  		temp_happiness = @happiness + 3
  		self.happiness = temp_happiness
  		#felix.happiness = felix.happiness +3
  		#friend_happiness = friend.happiness +3
  		#friend.happiness = friend_happiness
  	end

  	def start_conversation(person, topic)
  		
  	end

end # class end

alex = Person.new("Alex")
vicky = Person.new("Vicky",10)
william = Person.new("William", 10000, -123, 78)

# william = Person.new("William")