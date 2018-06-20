def size()
    size = ["small", "medium", "large"]
    size[0..2]
end
def meats ()
    meats = ["pepperoni", "sausage" ,"ham", "bacon"]
    meats[0..3]
end
def crust ()
    crust = ["normal", "thin", "stuffed", "deep dish"]
    crust[0..3]
end
def sauce()
    sauces = ["marinara", "spicy", "ranch"]
    sauces[0..2]
end
def veggies()
    veggies = ["onions", "green peppers", "bananna peppers"]
    veggies[0..2]
end
def cheese()
    cheese = ["mozzerella", "cheddar", "pepper jack"]
    cheese[0..2]
end
def special()
    special = ["wings", "bread sticks", "cinnamon bites"]
    special[0..2]
end
def drinks()
    drinks = ["20oz", "1 liter", "2 liter"]
    drinks[0..2]
end
def cls
    system('cls')
end
def pizza_maker(size, meats, crust, sauce, veggies, cheese); cls
    puts "Enter the corresponding number to make your selections"
    puts "please select size" ;print "#{size()} : "; pizza_size = $stdin.gets.chomp; cls
    puts "please select meats" ;print "#{meats()} :" ;pizza_meat = $stdin.gets.chomp; cls
    puts "please select crust" ;print "#{crust()} :" ;pizza_crust = $stdin.gets.chomp; cls
    puts "please select sauce" ;print "#{sauce()} :" ;pizza_sauce = $stdin.gets.chomp; cls
    puts "please select any additional topping" ;print "#{veggies()} :";pizza_veg= $stdin.gets.chomp; cls
    puts "please select cheese" ;print "#{cheese()} :" ;pizza_cheese = $stdin.gets.chomp; cls
    price = 0
    case pizza_size.to_f
    when 1; pizza_size = size[0]; price += 2.00
    when 2; pizza_size = size[1]; price += 5.00
    when 3; pizza_size = size[2]; price += 10.00
    end
    case pizza_meat.to_f
    when 1; pizza_meat = meats[0]; price += 2.00
    when 2; pizza_meat = meats[1]; price += 2.00
    when 3; pizza_meat = meats[2]; price += 2.00
    when 4; pizza_meat = meats[3]; price += 2.00
    end
    case pizza_crust.to_f
    when 1; pizza_crust = crust[0]; 
    when 2; pizza_crust = crust[1]; price += 1.10
    when 3; pizza_crust = crust[2]; price += 3.50
    when 4; pizza_crust = crust[3]; price += 5.50
    end
    case pizza_sauce.to_f
    when 1; pizza_sauce = sauce[0]; price += 1.10
    when 2; pizza_sauce = sauce[1]; price += 1.50
    when 3; pizza_sauce = sauce[2]; price += 1.50
    end 
    case pizza_veg.to_f
    when 1; pizza_veg = veggies[0]; price += 1.30
    when 2; pizza_veg = veggies[1]; price += 1.30
    when 3; pizza_veg = veggies[2]; price += 1.10
    end
    case pizza_cheese.to_f
    when 1; pizza_cheese = cheese[0]; price += 1.00
    when 2; pizza_cheese = cheese[1]; price += 1.10
    when 3; pizza_cheese = cheese[2]; price += 2.50
    end
   
    puts "would you like anything else? [y/n]"
    special_menu = $stdin.gets.chomp
    if special_menu == "y" ; cls
        puts "please enter the corresponding number to make your selection"
        print "#{special()} : "; special_selection = $stdin.gets.chomp; cls
            case special_selection.to_f
            when 1; special_selection = special[0]; price += 5.00
            when 2; special_selection = special[1]; price += 5.00
            when 3; special_selection = special[2]; price += 6.50
            end
    elsif special_menu == "n"; cls
    end

    puts "anything to drink?[y/n]"
    drink_menu = $stdin.gets.chomp
    if drink_menu == "y"; cls
        puts  "we only serve pepsi"
        puts "please enter the corresponding number to make your selection"
        print "#{drinks} : "; drink_order = $stdin.gets.chomp; cls
            case drink_order.to_f
            when 1; drink_order = drinks[0]; price += 2.00
            when 2; drink_order = drinks[1]; price += 3.00
            when 3; drink_order = drinks[2]; price += 5.00
            end
    elsif drink_menu =="n"; cls
        price += 0
       
    end

    puts "Do you want that delivered [y/n]"
    answer = $stdin.gets.chomp; cls
    if answer == "y" 
        puts "how many miles away do you live?"; miles = gets.chomp.to_i; cls
        price += 10.00
            if miles >=50
                (price + 5) + (0.10 * miles)
            else; price +5
            end
    elsif answer == "n"; cls
        price += 0
    end  
   
    total = (price * 1.15)
    puts "okay, that'll be a #{pizza_size} pizza, on #{pizza_crust} crust, with #{pizza_sauce} sauce, toppings include #{pizza_meat}, #{pizza_veg}, and #{pizza_cheese} cheese. "
   if special_menu == "y"
    puts "you also ordered #{special_selection}"
   elsif special_menu == "n"
   end

   if drink_menu == "y"
    puts "you also ordered a #{drink_order}"
   elsif drink_menu == "n"
   end


    puts " that'll come to $#{sprintf("%.2f", total)}"
end
 pizza_maker(size, meats, crust, sauce, veggies, cheese)