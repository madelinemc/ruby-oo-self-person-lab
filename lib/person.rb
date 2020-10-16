class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(i)
        @happiness = i.clamp(0,10)
    end

    def hygiene
        @hygiene
    end

    def hygiene=(i)
        @hygiene = i.clamp(0,10)
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        hygiene > 7
    end

    def get_paid(i)
        @bank_account = bank_account + i
        return "all about the benjamins"
    end

    def take_bath
       # this code works to pass the first 3 tests @hygiene = (hygiene + 4).clamp(0,10) but fails calling on hygiene= method
       self.hygiene=(@hygiene + 4)
       return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness=(@happiness + 3)
        person.happiness=(person.happiness + 3)
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            person.happiness=(person.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            person.happiness=(person.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end