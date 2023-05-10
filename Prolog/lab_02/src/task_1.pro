domains
  surname = string.
  phone = integer.
  city = string.
  street = string.
  house = integer.
  flat = integer.
  mark = string.
  color = string.
  price = integer.
  carnumber = string.
  address = addr(city, street, house, flat).
  area = integer.
  floors = integer.
  region = string.
  bankname = string.
  account = integer.
  amount = integer.
  experience = integer.
  buildingname = string.
  sitename = string.
  watervehiclename = string.
  Prop = string.
  propertyType = string.

  propertyItem =
    auto(Prop, color, price, carnumber);
    building(Prop, price, area, floors);
    site(Prop, price, area, region);
    water_vehicle(Prop, price, mark, color).


predicates
  nondeterm record(surname, phone, address)
  nondeterm property(surname, propertyItem)
  nondeterm bank(surname, bankname, amount, account, experience)

  nondeterm property_by_surname(surname, Prop)
  nondeterm property_and_price_by_surname(surname, Prop, price)
  nondeterm sum_of_prop_price_by_surname(surname, price)
  get_prop_price(surname, propertyType, price)

clauses
  record("Ivanov", 1, addr("Piter", "A", 1, 2)).
  record("Ivanov", 4,  addr("Piter", "A", 1, 2)).
  record("Petrov", 9,  addr("Moscow", "Brusilova", 3, 4)).
  record("Sidorov", 16,  addr("Moscow", "Brusilova", 5, 6)).
  record("Phedorov", 36,  addr("Moscow", "Donskoy", 7, 8)).

  bank("Ivanov", "Sberbank", 100, 10000, 3).
  bank("Petrov", "VTB", 10000, 99999, 15).
  bank("Sidorov", "Centralbank", 150, 1000, 20).
  bank("Phedorov", "Tinkoff", 8800, 500000, 1).

  property("Ivanov", auto("lada", "violet", 150, "aa000a")).
  property("Ivanov", building("box", 1000, 1, 1)).

  property("Petrov", auto("mers", "black", 2000, "aa002a")).
  property("Pertov", building("house", 10000, 250, 3)).
  property("Petrov", site("dacha", 6000, 600, "Podmoskovie")).

  property("Sidorov", auto("volga", "rusty", 10, "bb003b")).
  property("Sidorov", site("fields", 900000000, 50, "Siberia")).
  property("Sidorov", water_vehicle("waterbike", 100, "honda", "black")).

  property("Phedorov", auto("ferra", "red", 15000, "dd005d")).
  property("Phedorov", water_vehicle("yacht", 8000, "yamaha", "blue")).


  property_by_surname(Surname, Prop):-
    property(Surname, auto(Prop, _, _, _));
    property(Surname, building(Prop, _, _, _));
    property(Surname, site(Prop, _, _, _));
    property(Surname, water_vehicle(Prop, _, _, _)).

  property_and_price_by_surname(Surname, Prop, Price):-
    property(Surname, auto(Prop, _, Price, _));
    property(Surname, building(Prop, Price, _, _));
    property(Surname, site(Prop, Price, _, _));
    property(Surname, water_vehicle(Prop, Price, _, _)).

  get_prop_price(Surname, auto, Price) :-
    property(Surname, auto(_, _, Price, _)), !.
  get_prop_price(Surname, building, Price) :-
    property(Surname, building(_, Price, _, _)), !.
  get_prop_price(Surname, site, Price) :-
    property(Surname, site(_, Price, _, _)), !.
  get_prop_price(Surname, water_vehicle, Price) :-
    property(Surname, water_vehicle(_, Price, _, _)), !.
  get_prop_price(_, _, 0).

  sum_of_prop_price_by_surname(Surname, Cost):-
    get_prop_price(Surname, auto, AutoPrice),
    get_prop_price(Surname, building, BuildingPrice),
    get_prop_price(Surname, site, SitePrice),
    get_prop_price(Surname, water_vehicle, WVPrice),
    Cost = AutoPrice + BuildingPrice + SitePrice + WVPrice.


goal
 %property_by_surname("Ivanov", Prop).
 property_and_price_by_surname("Ivanov", Prop, Price).
  % sum_of_prop_price_by_surname("Ivanov", Cost).
