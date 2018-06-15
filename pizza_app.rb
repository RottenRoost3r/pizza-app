def size()
    size = ["small", "medium", "large"]
    size[0..3]
end

def meats ()
    meats = ["pepperoni", "sausage" ,"ham", "bacon"]
    meats[0..4]
end

def crust ()
    crust = ["normal", "thin", "stuffed", "deep dish"]
    crust[0..4]
end

def sauce()
    sauces = ["marinara", "spicy", "ranch"]
    sauces[0..3]
end

def veggies()
    veggies = ["onions", "green peppers", "bananna peppers"]
    veggies[0..3]
end

def cheese()
    cheese = ["mozzerella", "cheddar", "pepper jack"]
    cheese[0..3]
end

def pizza_maker(size, meats, crust, sauce, veggies, cheese)
    puts "Enter the corresponding number to make your selections"
    puts "please select size" ;print "#{size()} : "; pizza_size = $stdin.gets.chomp
    puts "please select meats" ;print "#{meats()} :" ;pizza_meat = $stdin.gets.chomp
    puts "please select crust" ;print "#{crust()} :" ;pizza_crust = $stdin.gets.chomp
    puts "please select sauce" ;print "#{sauce()} :" ;pizza_sauce = $stdin.gets.chomp
    puts "please select any additional topping" ;print "#{veggies()} :";pizza_veg= $stdin.gets.chomp
    puts "please select cheese" ;print "#{cheese()} :" ;pizza_cheese = $stdin.gets.chomp
    price = 0
    case pizza_size.to_i
    when 1; pizza_size = size[0]; price += 2.00
    when 2; pizza_size = size[1]; price += 5.00
    when 3; pizza_size = size[2]; price += 10.00
    end
    case pizza_meat.to_i
    when 1; pizza_meat = meats[0]; price += 2.00
    when 2; pizza_meat = meats[1]; price += 2.00
    when 3; pizza_meat = meats[2]; price += 2.00
    when 4; pizza_meat = meats[3]; price += 2.00
    end
    case pizza_crust.to_i
    when 1; pizza_crust = crust[0]; 
    when 2; pizza_crust = crust[1]; price += 1.10
    when 3; pizza_crust = crust[2]; price += 3.50
    when 4; pizza_crust = crust[3]; price += 5.50
    end
    case pizza_sauce.to_i
    when 1; pizza_sauce = sauce[0]; price += 1.10
    when 2; pizza_sauce = sauce[1]; price += 1.50
    when 3; pizza_sauce = sauce[2]; price += 1.50
    end 
    case pizza_veg.to_i
    when 1; pizza_veg = veggies[0]; price += 1.30
    when 2; pizza_veg = veggies[1]; price += 1.30
    when 3; pizza_veg = veggies[2]; price += 1.10
    end
    case pizza_cheese.to_i
    when 1; pizza_cheese = cheese[0]; price += 1.00
    when 2; pizza_cheese = cheese[1]; price += 1.10
    when 3; pizza_cheese = cheese[2]; price += 2.50
    end
    total = price
    puts "okay, that'll be a #{pizza_size} pizza, on #{pizza_crust} crust, with #{pizza_sauce} sauce, toppings include #{pizza_meat}, #{pizza_veg}, and #{pizza_cheese} cheese. "
    puts " that'll come to $#{total.round(1)}"
end
 pizza_maker(size, meats, crust, sauce, veggies, cheese)

