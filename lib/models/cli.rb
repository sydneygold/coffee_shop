class Cli
    attr_accessor :user, :name

    def initialize user=nil
        @user = nil
    end

    def start
        puts "WELCOME TO THE DIRTY BEAN COFFEE SHOP!" 
        sleep(1.25)
        puts "Can I get your name?"
        @name = gets.strip
        system "clear"
        puts "Thanks,#{@name}! I'd be happy to help get the perfectly curated cup for you."
        sleep(1.25)
        coffee_or_tea
    end    

    def coffee_or_tea
        prompt = TTY::Prompt.new
        choices = %w(Tea Coffee)
        type = prompt.select("What type of drink do you want?", choices, symbols: { marker: ">" })
                if type == "Tea"
                    puts "Sorry this is just a coffeehouse. But we highly recommend the Teahouse in Boulder!"
                else
                    puts "Great, let's get some more info."
                    drink_options
                end  
    end  

    def drink_options
        prompt = TTY::Prompt.new(symbols: {marker: '>'})
        system "clear"
        caffeine = prompt.yes?("Do you want a caffeinated drink?")
        milk = prompt.yes?("Do you want milk in your drink?")
            if milk == true
                milk_alt = prompt.select("Which type of milk would you like:", %w(Whole Nonfat Almond Soy Oat))
            else
                puts "Got it."
            end
        sweet = prompt.yes?("Do you want a sweet drink?")
            if sweet == true
                syrups = prompt.select("What flavor do you want in your drink?", %w(Vanilla Chocolate Caramel Coconut))
            else
                puts "You're sweet enough!"
            end
        temp = prompt.select("Do you want it hot or cold?", %w(Hot Iced Blended)) 
        drink=Drink.where()
                            
    end
end