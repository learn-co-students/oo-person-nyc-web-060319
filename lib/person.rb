# your code goes here
require 'pry'

class Person

    attr_reader :name
    # attr_writer :happiness (see below why this does not work)
    

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def bank_account
        @bank_account
    end
    
    def bank_account=(amt)
        amt
    end

    def happiness=(happiness)
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end

    def hygiene=(hygiene)
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
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
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4) 
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        '♪ another one bites the dust ♫'
    end

    # @person_instance = Person.new("Person 1")

    def call_friend(new_person)
        self.happiness=(@happiness + 3)
        new_person.happiness=(new_person.happiness + 3)
        "Hi #{new_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            person.happiness=(person.happiness - 2)
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            person.happiness=(person.happiness + 1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah' 
        end
    end
end
