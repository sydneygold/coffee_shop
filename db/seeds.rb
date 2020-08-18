
americano = Drink.create(name: "Americano", description: "A strong espresso drink with water", caffeine: true, milk: false, sweet: false, temp: true )
iced_coffee = Drink.create ("Iced Coffee", "A strong coffee beverage that's very customizable", true, false, nil, "iced")
latte = Drink.create("Latte", "Espresso paired with steamed milk", true, false, nil, false, nil, temp )
flavored_latte = Drink.create("Americano", "Espresso paired with steamed milk and syrups", true, true, milk_alt, true, syrup, temp )
mocha_latte = Drink.create("Mocha", "Espresso paired with steamed milk with chocolate", true, true, milk_alt, true, "chocolate", temp )
frappe = Drink.create("Frappe", "A blended drink with espresso, milk, and syrup", true, true, milk_alt, true, syrup, temp )
end
