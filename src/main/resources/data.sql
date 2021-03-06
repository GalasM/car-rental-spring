insert into user (id,username,password) values (1,'admin123','$2a$10$g09DwEO7fAOPUWJfJRekIuJov8m1tIWbC7HODMMJK9d8qNarsgdCy');
insert into user (id,username,password) values (2,'user123','$2a$10$BOt39Rnda0f0lSGPzR7y7.VOvVXC6Tyt.TFPXtVpKuxdB2G1BDqtS');

insert into role (id,name) values (1,'ROLE_ADMIN');
insert into role (id,name) values (2,'ROLE_USER');

insert into user_roles (users_id,roles_id) values (1,1);
insert into user_roles (users_id,roles_id) values (2,2);

insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (1,'Audi', 'A6', '2015', 'Benzyna', '3.0', 'Sedan', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (2,'BMW', 'M3', '2012', 'Benzyna', '2.0', 'Sedan', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (3,'Audi', 'S3', '2019', 'Benzyna', '2.5', 'Hatchback', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (4,'Toyota', 'Avensis', '2013', 'Ropa', '1.6', 'Kombi', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (5,'Mercedes', 'C63', '2018', 'Ropa', '2.4', 'Sedan', '2');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (6,'Volkswagen', 'Arteon', '2017', 'Benzyna', '2.0', 'Sedan', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (7,'Audi', 'RS4', '2018', 'Ropa', '1.8', 'Kombi', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (8,'Audi', 'S6', '2016', 'Benzyna', '1.8', 'Kombi', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (9,'BMW', 'M4', '2015', 'Ropa', '2.2', 'Sedan', '2');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (10,'Nissan', 'GTR', '2017', 'Benzyna', '2.4', 'Sedan', '2');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (11,'BMW', '1', '2012', 'Ropa', '1.8', 'Hatchback', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (12,'Mercedes', 'A45', '2014', 'Benzyna', '2.0', 'Hatchback', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (13,'Volkswagen', 'Golf R', '2013', 'Ropa', '2.5', 'Hatchback', '5');
insert into car (id,mark,model,year_Of_Production,fuel_Type, engine_Capacity, body_Type, number_Of_Places) values (14,'Audi', 'TT', '2015', 'Benzyna', '2.0', 'Sedan', '2');

insert into car_photo(id,photo,car_id) values (1,FILE_READ('classpath:static/Audi-A6-1.jpg'),1);
insert into car_photo(id,photo,car_id) values (2,FILE_READ('classpath:static/Audi-A6-2.jpg'),1);
insert into car_photo(id,photo,car_id) values (3,FILE_READ('classpath:static/Audi-A6-3.jpg'),1);
insert into car_photo(id,photo,car_id) values (4,FILE_READ('classpath:static/BMW-M3-1.jpg'),2);
insert into car_photo(id,photo,car_id) values (5,FILE_READ('classpath:static/BMW-M3-2.jpg'),2);
insert into car_photo(id,photo,car_id) values (6,FILE_READ('classpath:static/BMW-M3-3.jpg'),2);
insert into car_photo(id,photo,car_id) values (7,FILE_READ('classpath:static/Audi-S3-1.jpg'),3);
insert into car_photo(id,photo,car_id) values (8,FILE_READ('classpath:static/Audi-S3-2.jpg'),3);
insert into car_photo(id,photo,car_id) values (9,FILE_READ('classpath:static/Audi-S3-3.jpg'),3);
insert into car_photo(id,photo,car_id) values (10,FILE_READ('classpath:static/Toyota-Avensis-1.jpg'),4);
insert into car_photo(id,photo,car_id) values (11,FILE_READ('classpath:static/Toyota-Avensis-2.jpg'),4);
insert into car_photo(id,photo,car_id) values (12,FILE_READ('classpath:static/Toyota-Avensis-3.jpg'),4);
insert into car_photo(id,photo,car_id) values (13,FILE_READ('classpath:static/Mercedes-C63-1.jpg'),5);
insert into car_photo(id,photo,car_id) values (14,FILE_READ('classpath:static/Mercedes-C63-2.jpg'),5);
insert into car_photo(id,photo,car_id) values (15,FILE_READ('classpath:static/Mercedes-C63-3.jpg'),5);
insert into car_photo(id,photo,car_id) values (16,FILE_READ('classpath:static/Volkswagen-Arteon-1.jpg'),6);
insert into car_photo(id,photo,car_id) values (17,FILE_READ('classpath:static/Volkswagen-Arteon-2.jpg'),6);
insert into car_photo(id,photo,car_id) values (18,FILE_READ('classpath:static/Volkswagen-Arteon-3.jpg'),6);
insert into car_photo(id,photo,car_id) values (19,FILE_READ('classpath:static/Audi-RS4-1.jpg'),7);
insert into car_photo(id,photo,car_id) values (20,FILE_READ('classpath:static/Audi-RS4-2.jpg'),7);
insert into car_photo(id,photo,car_id) values (21,FILE_READ('classpath:static/Audi-RS4-3.jpg'),7);
insert into car_photo(id,photo,car_id) values (22,FILE_READ('classpath:static/Audi-S6-1.jpg'),8);
insert into car_photo(id,photo,car_id) values (23,FILE_READ('classpath:static/Audi-S6-2.jpg'),8);
insert into car_photo(id,photo,car_id) values (24,FILE_READ('classpath:static/Audi-S6-3.jpg'),8);
insert into car_photo(id,photo,car_id) values (25,FILE_READ('classpath:static/BMW-M4-1.jpg'),9);
insert into car_photo(id,photo,car_id) values (26,FILE_READ('classpath:static/BMW-M4-2.jpg'),9);
insert into car_photo(id,photo,car_id) values (27,FILE_READ('classpath:static/BMW-M4-3.jpg'),9);
insert into car_photo(id,photo,car_id) values (28,FILE_READ('classpath:static/Nissan-GTR-1.jpg'),10);
insert into car_photo(id,photo,car_id) values (29,FILE_READ('classpath:static/Nissan-GTR-2.jpg'),10);
insert into car_photo(id,photo,car_id) values (30,FILE_READ('classpath:static/Nissan-GTR-3.jpg'),10);
insert into car_photo(id,photo,car_id) values (31,FILE_READ('classpath:static/BMW-1-1.jpg'),11);
insert into car_photo(id,photo,car_id) values (32,FILE_READ('classpath:static/BMW-1-2.jpg'),11);
insert into car_photo(id,photo,car_id) values (33,FILE_READ('classpath:static/BMW-1-3.jpg'),11);
insert into car_photo(id,photo,car_id) values (34,FILE_READ('classpath:static/Mercedes-A45-1.jpg'),12);
insert into car_photo(id,photo,car_id) values (35,FILE_READ('classpath:static/Mercedes-A45-2.jpg'),12);
insert into car_photo(id,photo,car_id) values (36,FILE_READ('classpath:static/Mercedes-A45-3.jpg'),12);
insert into car_photo(id,photo,car_id) values (37,FILE_READ('classpath:static/Volkswagen-Golf-1.jpg'),13);
insert into car_photo(id,photo,car_id) values (38,FILE_READ('classpath:static/Volkswagen-Golf-2.jpg'),13);
insert into car_photo(id,photo,car_id) values (39,FILE_READ('classpath:static/Volkswagen-Golf-3.jpg'),13);
insert into car_photo(id,photo,car_id) values (40,FILE_READ('classpath:static/Audi-TT-1.jpg'),14);
insert into car_photo(id,photo,car_id) values (41,FILE_READ('classpath:static/Audi-TT-2.jpg'),14);
insert into car_photo(id,photo,car_id) values (42,FILE_READ('classpath:static/Audi-TT-3.jpg'),14);

insert into offer(id,description,price,car_id) values (1,'Samochody Audi A6  wyposażone są w nadwozie sedan lub kombi, pięć siedzeń i od 4 do 5 drzwi. Auta mają długość od 4,5 do ok. 5 metrów, szerokość w przedziale 1775–1992 mm, a wysokość może wynosić 1425–1480 mm. Pojemność bagażnika to 630–1660 litrów.',500,1);
insert into offer(id,description,price,car_id) values (2,'Wśród samochodów BMW serii 3 znajdziemy modele jeżdżące na benzynę, benzynowo-elektryczne oraz wersje z dieslem. Posiadane wersje wyposażane są w 2–5 drzwi i 4 lub 5 siedzeń, natomiast pojemność bagażnika miesi się do 1500 litrów. ',300,2);
insert into offer(id,description,price,car_id) values (3,'Zużycie paliwa w Audi S3 8L wynosi średnio 9,3 l na 100 przejechanych kilometrów, a od zera do setki auto rozpędza się w niecałe 7 sekund. Wersja posiada nowe zderzaki z przodu, jak i z tyłu.',700,3);
insert into offer(id,description,price,car_id) values (4,'Wyposażenie samochodu nawet w wersji podstawowej jest dość bogate i obejmuje pięć poduszek powietrznych (dwie przednie i boczne oraz poduszka kolanowa dla pasażera), ABS z EBD, ESP, manualną klimatyzację i radioodtwarzacz z CD i MP3.',150,4);
insert into offer(id,description,price,car_id) values (5,'Model C63 AMG, wyposażony 457-konny ośmiocylindrowy silnik o pojemności 6.2 l, jest najmocniejszą odmianą obecnej generacji Klasy C.  Wersje AMG W204 są dostępne w każdym typu nadwozia: kombi, sedan oraz coupe.',335,5);
insert into offer(id,description,price,car_id) values (6,'Produkowany od roku 2017, należący do segmentu E (wyższa klasa średnia) o nadwoziu typu fastback, Volkswagen Arteon to nowy model flagowy niemieckiej marki. Samochód bezpośrednio zastąpił Volkswagena CC i poprzedniego Passata CC',280,6);
insert into offer(id,description,price,car_id) values (7,'Jest ciche nawet przy wysokich prędkościach i absolutnie stabilne. Asystenci jazdy działają perfekcyjnie, a tłumienie nierówności w trybie komfortowym nie pozostawia niczego do życzenia.',520,7);
insert into offer(id,description,price,car_id) values (8,'Pod maską znajdziemy silnik V6 o mocy 349 KM i momencie obrotowym na poziomie 700 niutonometrów. Pracy silnika trafia na wszystkie koła dzięki ośmiobiegowej skrzyni. To pozwala katapultować S6 do setki w 5 sekund.Prędkość maksymalna 250 km/h.',320,8);
insert into offer(id,description,price,car_id) values (9,'Prowadzi się jeszcze lepiej, niż swój poprzednik. Napęd w dalszym ciągu przenoszony jest na tył, a auto jest lżejsze i posiada większą moc od modelu M3. Wykorzystano nowe zawieszenie i wszystkie udogodnienia, jakie wymyślono od czasów serii 3.',550,9);
insert into offer(id,description,price,car_id) values (10,'Nissan GT-R jest samochodem sportowym produkowanym przez Nissana w Japonii. Napęd przekazywany jest na wszystkie cztery koła za pomocą 6-biegowej dwusprzęgłowej automatycznej skrzyni biegów z możliwością sekwencyjnej zmiany przełożeń.',600,10);
insert into offer(id,description,price,car_id) values (11,'Maksymalna moc silnika BMW serii 1 ma od 95 do 340 koni mechanicznych, co przekłada się na maksymalną prędkość auta od 185 do 250 km/h. W BMW serii 1 może być silnik benzynowy lub silnik diesla. Średnie spalanie wynosi ok. 5 litrów na 100 km.',300,11);
insert into offer(id,description,price,car_id) values (12,'Sam w sobie jest kieszonkową rakietą z zadziornym pakietem aerodynamicznym. Uroku dodaje mu 2,0-litrowy, turbodoładowany silnik generujący 360 KM. Napęd przekazywany jest na wszystkie przez siedmiobiegową przekładnie AMG SPEEDSHIFT.',400,12);
insert into offer(id,description,price,car_id) values (13,'Pod maską tego auta pracuje 2-litrowy silnik benzynowy rozwijający pokaźną moc 300 KM. Połączenie takiego silnika z 6-biegową przekładnią DSG oraz napędem 4Motion pozwala katapultować Golfa R do pierwszej setki w 4,9 s.',450,13);
insert into offer(id,description,price,car_id) values (14,'Na tylnej klapie znajduje się spoiler wysuwany automatycznie po przekroczeniu 120 km/h, który za pomocą przycisku można wysunąć z miejsca kierowcy. W celu zapewnienia bezpiecznej jazdy modelem TT zastosowano system stabilizacji toru jazdy ESP.',480,14);

insert into location(id,miasto,adres,telefon) values (1, 'Kielce', 'Warszawska 125', '+48 665 700 000');
insert into location(id,miasto,adres,telefon) values (2, 'Kielce', 'Wojska Polskiego 32', '+48 665 700 300');

insert into rent(id,kwota,miejsce_Wypozyczenia,miejsce_Oddania,data_Wypozyczenia,data_Oddania, godzina_Wypozyczenia, godzina_Oddania, status) values (1, '1000', 'Kielce a', 'Kielce b', '2020-05-18', '2020-05-20', '12:00', '14:00', 'Opłacone');
insert into offer_rents(rent_id,offer_id) values (1,1);
insert into rent_users(rent_id, user_id) values (1,1);

insert into fault(id, type_fault, title_fault, description_fault, rent_id) values (1, 'Usterka przy wypożyczeniu', 'Porysowany zderzak', 'Zderzak z przodu porysowany przy wypozyczeniu samochodu', 1);

insert into opinion(id,stars,comment,user_id) values (1,'5','Polecam tą firmę, niskie ceny i profesjonalna obsługa', 2);
insert into opinion(id,stars,comment,user_id) values (2,'4','Duży wybór pojazdów, niskie ceny, polecam!', 2);
