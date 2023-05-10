domains
    adress = addr(string, string, integer, integer)

predicates
    nondeterm record(string, integer, adress)
    nondeterm auto(string, string, string, integer, string)

clauses
    record("Volkov", 324, addr("Moscow", "Mira", 15, 6)).
    record("Volkov", 212,  addr("Piter", "Petrowskaya", 23, 1)).
    record("Ivanov", 232,  addr("Kazan", "Bauman", 324, 100)).
    record("Petrow", 432,  addr("Moscow", "Twerskaya", 3, 35)).
    record("Sidorov", 879,  addr("Piter", "Goncharnaya", 7, 20)).

    auto("Volkov", "Porshe", "silver", 300000, "am777r").
    auto("Volkov", "Mersedes-banz", "black", 350000, "am777g").
    auto("Ivanov", "Lada", "chery", 10, "sd543s").
    auto("Ivanov", "YAZ", "green", 20, "lo422x").
    auto("Petrow", "BMW", "blue", 200000, "me324n").
    auto("Sidorov", "Ferrari", "red", 400000, "no343s").
    auto("Sidorov", "Porshe", "silver", 300000, "ds432s").

goal
    auto(Surname, "Porshe", "silver", _, _), record(Surname, Phone, addr(City, _, _, _)).
%Surname=Volkov, Phone=324, City=Moscow
%Surname=Volkov, Phone=212, City=Piter
%Surname=Sidorov, Phone=879, City=Piter
%3 Solutions

%goal
%    auto(Surname, "Lada", "silver", _, _), record(Surname, Phone, addr(City, _, _, _)).
%No soulution

%goal
%    auto(Surname, "Lada", "chery", _, _), record(Surname, Phone, addr(City, _, _, _)).
%Surname=Ivanov, Phone=232, City=Kazan
%1 Solution