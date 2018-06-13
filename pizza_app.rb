def meats ()
    meats = ["pepperoni", "sausage" ,"ham", "bacon"]
end

def crust ()
    crust = ["normal", "thin", "stuffed", "deep dish"]
end

def sauce()
    sauces = ["marinara", "spicy", "ranch"]
end

def veggies()
    veggies = ["onions", "green peppers", "bananna peppers"]
end

def cheese()
    cheese = ["mozzerella", "cheddar", "pepper jack"]
end

def pizza_maker
    puts "How many pizzas would you like?"
    
    pizza_counter = gets.chomp.to_i
        while pizza_counter > 0 do
        puts "You are getting a #{meats.sample}, #{crust.sample} crust pizza, with #{veggies.sample}, #{sauce.sample} sauce, and #{cheese.sample} cheese..."
        pizza_counter -= 1
    end

    loop do
        puts "Is that good? yes or no?"
        answer = gets.chomp
            if answer == "yes"
                exit
            elsif answer == "no"
                pizza_maker
            elsif answer == "pizza pie"
                puts "PEPPERONI AND GREEN PEPPERS MUSHROOMS OLIVES CHIVES"
                sleep 1
                puts "pepperoni and green peppers mushrooms olives chives"
                sleep 1
                puts "NEED"
                sleep 0.3
                puts "THERAPY,"
                sleep 0.3
                puts "THERAPY,"
                sleep 0.3
                puts "ADVERTISING CAUSES NEED,"
                sleep 0.3
                puts "THERAPY,"
                sleep 0.3
                puts "THERAPY!"
                sleep 2
                pizza_maker
            else 
        puts "please type yes or no"


        end
    end
end
pizza_maker