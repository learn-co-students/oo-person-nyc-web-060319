# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name


    def initialize(name, bank_account= 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness= happiness
        @hygiene = hygiene
    
    end


    def happiness=(happiness)
        if happiness > 10
            @happiness= 10
        elsif happiness < 0
            @happiness= 0
        else
             @happiness= happiness
        end
    end


    def hygiene=(hygiene)
        if hygiene > 10 
            @hygiene= 10 
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
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
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
       self.hygiene += 4
       if self.hygiene > 10 
        self.hygiene = 10
        end
     return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out 
        self.hygiene -=3 
        if self.hygiene < 0
            self.hygiene = 0
        end
        self.happiness +=2 
        if self.happiness > 10 
            self.happiness = 10 
        end
        return '♪ another one bites the dust ♫'

    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness +=3
        if self.happiness > 10 
            self.happiness = 10 
        end
        if friend.happiness > 10
            friend.happines = 10
        end
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def helper
      if self.happiness > 10 
        self.happiness = 10 
      end
      if friend.happiness > 10
        friend.happines = 10
      end
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -=2
            self.happiness -=2
            return "blah blah partisan blah lobbyist"
            if self.happiness > 10 
                self.happiness = 10 
            end
            if friend.happiness > 10
                friend.happines = 10
            end
        
        

        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
           if self.happiness > 10 
               self.happiness = 10 
           end
           if person.happiness > 10
            person.happines = 10
           end
        
        else
            return "blah blah blah blah blah"
        end
            
       

    end #end of start conversation





end #end of Person class

person1 = Person.new("paul", 45, 13, 9)
