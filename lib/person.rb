class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(new_happiness)
        @happiness = new_happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(new_hygiene)
        @hygiene = new_hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def clean?
        @hygiene > 7 ? true : false  
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end


end


# - The happiness and hygiene new_happiness should be able to change, however the maximum and minimum new_happiness for both happiness and hygiene should be 10 and  0 respectively

# ##### Non-attribute defining instance methods

# 3. The `take_bath` method should increment the person's hygiene new_happiness by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".

# 4. The `work_out` method should increment the person's happiness by two new_happiness, decrease their hygiene by three new_happiness, and return the Queen lyrics, "♪ another one bites the dust ♫".

# 5. The `call_friend` method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness new_happiness by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"

# 6. Finally, the `start_conversation` method should accept two arguments, the person to start a conversation with and the topic of conversation.
#   * If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
#   * If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
#   * If the topic is not politics or weather, their happiness new_happiness don't change and the method returns "blah blah blah blah blah".

