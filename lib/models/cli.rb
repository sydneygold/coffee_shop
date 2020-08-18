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
        puts "Thanks,#{@name}! I'd be happy to help get the perfectly curated cup for you."
        sleep(1.25)
        system "clear"
        drink_options
    end    

    
end