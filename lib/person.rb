# encoding: utf-8
# your code goes here
require "pry"

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name )
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(points)
        if points > 10
            @happiness = 10
        elsif points < 0
            @happiness = 0
        else
            @happiness = points
        end
    end

    def hygiene=(points)
        #binding.pry
        if points > 10
            #binding.pry
            @hygiene = 10
        elsif points < 0
            #binding.pry 
            @hygiene = 0
        else
            @hygiene = points
        end
        @hygiene
    end

    def clean?
        if @hygiene > 7
            return true
        end
        false
    end

    def happy?
        if @happiness > 7
            return true
        end
        false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        #binding.pry
        self.hygiene += 4
        #binding.pry
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else
            return "blah blah blah blah blah"
        end
    end
end