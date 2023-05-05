drop DATABASE if exists VET_CLINIC_test;
create database VET_CLINIC_test;
use VET_CLINIC_test;

create table vet_patients (
id_patient int,
kind int,
type int,
owner_id int,
main_food_id int,
registration_data date,
pet_name varchar(50),
pet_age int,
is_outdor enum ('y','n')
);
alter table vet_patients
add primary key (id_patient);

create table owner (
owner_id int,
owner_first_name varchar(50),
owner_last_name varchar(50),
owner_address varchar (100),
owner_phone_number varchar (100),
owner_email varchar (50)
);
alter table owner
add primary key (owner_id);


create table visits (
visit_id int,
vet_patient_id int,
visit_type_id int,
coments varchar (500),
prescription_id int,
service_id int
);
alter table visits
add primary key (visit_id);


create table animal_kind (
id int,
kind_name varchar (50)
);
alter table animal_kind
add primary key (id);


create table animal_type (
id int,
type_name varchar (50)
);
alter table animal_type
add primary key (id);


create table food (
food_id int,
main_food varchar (50)
);
alter table food
add primary key (food_id);


create table drugs (
drug_id int,
name varchar(5000),
unit_price float
);
alter table drugs
add primary key (drug_id);


create table service_types (
id int,
name varchar (100),
price float
);
alter table service_types
add primary key (id);


create table service (
id int,
service_id int,
service_type int
);
alter table service
add primary key (id);


create table visit_type (
id int,
name varchar (100),
description varchar(5000)
);
alter table visit_type
add primary key (id);


create table prescription (
id int,
prescription_id int,
drug_id int
);
alter table prescription
add primary key (id);


alter table visits
add constraint FK_visits
foreign key(vet_patient_id) references vet_patients(id_patient);



alter table visits
add constraint FK_visits2
foreign key(visit_type_id) references visit_type(id);

alter table prescription
add constraint FK_prescription
foreign key(drug_id) references drugs(drug_id);

alter table service
add constraint FK_service
foreign key(service_type) references service_types(id);


alter table Vet_patients
add constraint FK_patients1
foreign key(kind) references animal_kind(id);

alter table Vet_patients
add constraint FK_patients2
foreign key(type) references animal_type(id);


alter table Vet_patients
add constraint FK_patients3
foreign key(owner_id) references owner(owner_id);

alter table Vet_patients
add constraint FK_patients4
foreign key(main_food_id) references food(food_id);


/*
-- Query: select * from animal_type
LIMIT 0, 1000

-- Date: 2023-03-12 15:56
*/
INSERT INTO animal_type (`id`,`type_name`) VALUES (1,'Aardvark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (2,'Abyssinian');
INSERT INTO animal_type (`id`,`type_name`) VALUES (3,'Adelie Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (4,'Affenpinscher');
INSERT INTO animal_type (`id`,`type_name`) VALUES (5,'Afghan Hound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (6,'African Bush Elephant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (7,'African Civet');
INSERT INTO animal_type (`id`,`type_name`) VALUES (8,'African Clawed Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (9,'African Forest Elephant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (10,'African Palm Civet');
INSERT INTO animal_type (`id`,`type_name`) VALUES (11,'African Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (12,'African Tree Toad');
INSERT INTO animal_type (`id`,`type_name`) VALUES (13,'African Wild Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (14,'Ainu Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (15,'Airedale Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (16,'Akbash');
INSERT INTO animal_type (`id`,`type_name`) VALUES (17,'Akita');
INSERT INTO animal_type (`id`,`type_name`) VALUES (18,'Alaskan Malamute');
INSERT INTO animal_type (`id`,`type_name`) VALUES (19,'Albatross');
INSERT INTO animal_type (`id`,`type_name`) VALUES (20,'Aldabra Giant Tortoise');
INSERT INTO animal_type (`id`,`type_name`) VALUES (21,'Alligator');
INSERT INTO animal_type (`id`,`type_name`) VALUES (22,'Alpine Dachsbracke');
INSERT INTO animal_type (`id`,`type_name`) VALUES (23,'American Bulldog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (24,'American Cocker Spaniel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (25,'American Coonhound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (26,'American Eskimo Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (27,'American Foxhound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (28,'American Pit Bull Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (29,'American Staffordshire Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (30,'American Water Spaniel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (31,'Anatolian Shepherd Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (32,'Angelfish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (33,'Ant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (34,'Anteater');
INSERT INTO animal_type (`id`,`type_name`) VALUES (35,'Antelope');
INSERT INTO animal_type (`id`,`type_name`) VALUES (36,'Appenzeller Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (37,'Arctic Fox');
INSERT INTO animal_type (`id`,`type_name`) VALUES (38,'Arctic Hare');
INSERT INTO animal_type (`id`,`type_name`) VALUES (39,'Arctic Wolf');
INSERT INTO animal_type (`id`,`type_name`) VALUES (40,'Armadillo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (41,'Asian Elephant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (42,'Asian Giant Hornet');
INSERT INTO animal_type (`id`,`type_name`) VALUES (43,'Asian Palm Civet');
INSERT INTO animal_type (`id`,`type_name`) VALUES (44,'Asiatic Black Bear');
INSERT INTO animal_type (`id`,`type_name`) VALUES (45,'Australian Cattle Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (46,'Australian Kelpie Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (47,'Australian Mist');
INSERT INTO animal_type (`id`,`type_name`) VALUES (48,'Australian Shepherd');
INSERT INTO animal_type (`id`,`type_name`) VALUES (49,'Australian Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (50,'Avocet');
INSERT INTO animal_type (`id`,`type_name`) VALUES (51,'Axolotl');
INSERT INTO animal_type (`id`,`type_name`) VALUES (52,'Aye Aye');
INSERT INTO animal_type (`id`,`type_name`) VALUES (53,'Baboon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (54,'Bactrian Camel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (55,'Badger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (56,'Balinese');
INSERT INTO animal_type (`id`,`type_name`) VALUES (57,'Banded Palm Civet');
INSERT INTO animal_type (`id`,`type_name`) VALUES (58,'Bandicoot');
INSERT INTO animal_type (`id`,`type_name`) VALUES (59,'Barb');
INSERT INTO animal_type (`id`,`type_name`) VALUES (60,'Barn Owl');
INSERT INTO animal_type (`id`,`type_name`) VALUES (61,'Barnacle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (62,'Barracuda');
INSERT INTO animal_type (`id`,`type_name`) VALUES (63,'Basenji Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (64,'Basking Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (65,'Basset Hound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (66,'Bat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (67,'Bavarian Mountain Hound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (68,'Beagle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (69,'Bear');
INSERT INTO animal_type (`id`,`type_name`) VALUES (70,'Bearded Collie');
INSERT INTO animal_type (`id`,`type_name`) VALUES (71,'Bearded Dragon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (72,'Beaver');
INSERT INTO animal_type (`id`,`type_name`) VALUES (73,'Bedlington Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (74,'Beetle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (75,'Bengal Tiger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (76,'Bernese Mountain Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (77,'Bichon Frise');
INSERT INTO animal_type (`id`,`type_name`) VALUES (78,'Binturong');
INSERT INTO animal_type (`id`,`type_name`) VALUES (79,'Bird');
INSERT INTO animal_type (`id`,`type_name`) VALUES (80,'Birds Of Paradise');
INSERT INTO animal_type (`id`,`type_name`) VALUES (81,'Birman');
INSERT INTO animal_type (`id`,`type_name`) VALUES (82,'Bison');
INSERT INTO animal_type (`id`,`type_name`) VALUES (83,'Black Bear');
INSERT INTO animal_type (`id`,`type_name`) VALUES (84,'Black Rhinoceros');
INSERT INTO animal_type (`id`,`type_name`) VALUES (85,'Black Russian Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (86,'Black Widow Spider');
INSERT INTO animal_type (`id`,`type_name`) VALUES (87,'Bloodhound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (88,'Blue Lacy Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (89,'Blue Whale');
INSERT INTO animal_type (`id`,`type_name`) VALUES (90,'Bluetick Coonhound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (91,'Bobcat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (92,'Bolognese Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (93,'Bombay');
INSERT INTO animal_type (`id`,`type_name`) VALUES (94,'Bongo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (95,'Bonobo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (96,'Booby');
INSERT INTO animal_type (`id`,`type_name`) VALUES (97,'Border Collie');
INSERT INTO animal_type (`id`,`type_name`) VALUES (98,'Border Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (99,'Bornean Orang-utan');
INSERT INTO animal_type (`id`,`type_name`) VALUES (100,'Borneo Elephant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (101,'Boston Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (102,'Bottle Nosed Dolphin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (103,'Boxer Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (104,'Boykin Spaniel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (105,'Brazilian Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (106,'Brown Bear');
INSERT INTO animal_type (`id`,`type_name`) VALUES (107,'Budgerigar');
INSERT INTO animal_type (`id`,`type_name`) VALUES (108,'Buffalo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (109,'Bull Mastiff');
INSERT INTO animal_type (`id`,`type_name`) VALUES (110,'Bull Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (111,'Bull Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (112,'Bulldog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (113,'Bullfrog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (114,'Bumble Bee');
INSERT INTO animal_type (`id`,`type_name`) VALUES (115,'Burmese');
INSERT INTO animal_type (`id`,`type_name`) VALUES (116,'Burrowing Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (117,'Butterfly');
INSERT INTO animal_type (`id`,`type_name`) VALUES (118,'Butterfly Fish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (119,'Caiman');
INSERT INTO animal_type (`id`,`type_name`) VALUES (120,'Caiman Lizard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (121,'Cairn Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (122,'Camel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (123,'Canaan Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (124,'Capybara');
INSERT INTO animal_type (`id`,`type_name`) VALUES (125,'Caracal');
INSERT INTO animal_type (`id`,`type_name`) VALUES (126,'Carolina Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (127,'Cassowary');
INSERT INTO animal_type (`id`,`type_name`) VALUES (128,'Cat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (129,'Caterpillar');
INSERT INTO animal_type (`id`,`type_name`) VALUES (130,'Catfish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (131,'Cavalier King Charles Spaniel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (132,'Centipede');
INSERT INTO animal_type (`id`,`type_name`) VALUES (133,'Cesky Fousek');
INSERT INTO animal_type (`id`,`type_name`) VALUES (134,'Chameleon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (135,'Chamois');
INSERT INTO animal_type (`id`,`type_name`) VALUES (136,'Cheetah');
INSERT INTO animal_type (`id`,`type_name`) VALUES (137,'Chesapeake Bay Retriever');
INSERT INTO animal_type (`id`,`type_name`) VALUES (138,'Chicken');
INSERT INTO animal_type (`id`,`type_name`) VALUES (139,'Chihuahua');
INSERT INTO animal_type (`id`,`type_name`) VALUES (140,'Chimpanzee');
INSERT INTO animal_type (`id`,`type_name`) VALUES (141,'Chinchilla');
INSERT INTO animal_type (`id`,`type_name`) VALUES (142,'Chinese Crested Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (143,'Chinook');
INSERT INTO animal_type (`id`,`type_name`) VALUES (144,'Chinstrap Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (145,'Chipmunk');
INSERT INTO animal_type (`id`,`type_name`) VALUES (146,'Chow Chow');
INSERT INTO animal_type (`id`,`type_name`) VALUES (147,'Cichlid');
INSERT INTO animal_type (`id`,`type_name`) VALUES (148,'Clouded Leopard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (149,'Clown Fish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (150,'Clumber Spaniel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (151,'Coati');
INSERT INTO animal_type (`id`,`type_name`) VALUES (152,'Cockroach');
INSERT INTO animal_type (`id`,`type_name`) VALUES (153,'Collared Peccary');
INSERT INTO animal_type (`id`,`type_name`) VALUES (154,'Collie');
INSERT INTO animal_type (`id`,`type_name`) VALUES (155,'Common Buzzard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (156,'Common Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (157,'Common Loon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (158,'Common Toad');
INSERT INTO animal_type (`id`,`type_name`) VALUES (159,'Coral');
INSERT INTO animal_type (`id`,`type_name`) VALUES (160,'Cottontop Tamarin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (161,'Cougar');
INSERT INTO animal_type (`id`,`type_name`) VALUES (162,'Cow');
INSERT INTO animal_type (`id`,`type_name`) VALUES (163,'Coyote');
INSERT INTO animal_type (`id`,`type_name`) VALUES (164,'Crab');
INSERT INTO animal_type (`id`,`type_name`) VALUES (165,'Crab-Eating Macaque');
INSERT INTO animal_type (`id`,`type_name`) VALUES (166,'Crane');
INSERT INTO animal_type (`id`,`type_name`) VALUES (167,'Crested Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (168,'Crocodile');
INSERT INTO animal_type (`id`,`type_name`) VALUES (169,'Cross River Gorilla');
INSERT INTO animal_type (`id`,`type_name`) VALUES (170,'Curly Coated Retriever');
INSERT INTO animal_type (`id`,`type_name`) VALUES (171,'Cuscus');
INSERT INTO animal_type (`id`,`type_name`) VALUES (172,'Cuttlefish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (173,'Dachshund');
INSERT INTO animal_type (`id`,`type_name`) VALUES (174,'Dalmatian');
INSERT INTO animal_type (`id`,`type_name`) VALUES (175,'Darwin\'s Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (176,'Deer');
INSERT INTO animal_type (`id`,`type_name`) VALUES (177,'Desert Tortoise');
INSERT INTO animal_type (`id`,`type_name`) VALUES (178,'Deutsche Bracke');
INSERT INTO animal_type (`id`,`type_name`) VALUES (179,'Dhole');
INSERT INTO animal_type (`id`,`type_name`) VALUES (180,'Dingo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (181,'Discus');
INSERT INTO animal_type (`id`,`type_name`) VALUES (182,'Doberman Pinscher');
INSERT INTO animal_type (`id`,`type_name`) VALUES (183,'Dodo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (184,'Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (185,'Dogo Argentino');
INSERT INTO animal_type (`id`,`type_name`) VALUES (186,'Dogue De Bordeaux');
INSERT INTO animal_type (`id`,`type_name`) VALUES (187,'Dolphin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (188,'Donkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (189,'Dormouse');
INSERT INTO animal_type (`id`,`type_name`) VALUES (190,'Dragonfly');
INSERT INTO animal_type (`id`,`type_name`) VALUES (191,'Drever');
INSERT INTO animal_type (`id`,`type_name`) VALUES (192,'Duck');
INSERT INTO animal_type (`id`,`type_name`) VALUES (193,'Dugong');
INSERT INTO animal_type (`id`,`type_name`) VALUES (194,'Dunker');
INSERT INTO animal_type (`id`,`type_name`) VALUES (195,'Dusky Dolphin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (196,'Dwarf Crocodile');
INSERT INTO animal_type (`id`,`type_name`) VALUES (197,'Eagle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (198,'Earwig');
INSERT INTO animal_type (`id`,`type_name`) VALUES (199,'Eastern Gorilla');
INSERT INTO animal_type (`id`,`type_name`) VALUES (200,'Eastern Lowland Gorilla');
INSERT INTO animal_type (`id`,`type_name`) VALUES (201,'Echidna');
INSERT INTO animal_type (`id`,`type_name`) VALUES (202,'Edible Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (203,'Egyptian Mau');
INSERT INTO animal_type (`id`,`type_name`) VALUES (204,'Electric Eel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (205,'Elephant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (206,'Elephant Seal');
INSERT INTO animal_type (`id`,`type_name`) VALUES (207,'Elephant Shrew');
INSERT INTO animal_type (`id`,`type_name`) VALUES (208,'Emperor Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (209,'Emperor Tamarin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (210,'Emu');
INSERT INTO animal_type (`id`,`type_name`) VALUES (211,'English Cocker Spaniel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (212,'English Shepherd');
INSERT INTO animal_type (`id`,`type_name`) VALUES (213,'English Springer Spaniel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (214,'Entlebucher Mountain Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (215,'Epagneul Pont Audemer');
INSERT INTO animal_type (`id`,`type_name`) VALUES (216,'Eskimo Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (217,'Estrela Mountain Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (218,'Falcon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (219,'Fennec Fox');
INSERT INTO animal_type (`id`,`type_name`) VALUES (220,'Ferret');
INSERT INTO animal_type (`id`,`type_name`) VALUES (221,'Field Spaniel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (222,'Fin Whale');
INSERT INTO animal_type (`id`,`type_name`) VALUES (223,'Finnish Spitz');
INSERT INTO animal_type (`id`,`type_name`) VALUES (224,'Fire-Bellied Toad');
INSERT INTO animal_type (`id`,`type_name`) VALUES (225,'Fish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (226,'Fishing Cat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (227,'Flamingo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (228,'Flat Coat Retriever');
INSERT INTO animal_type (`id`,`type_name`) VALUES (229,'Flounder');
INSERT INTO animal_type (`id`,`type_name`) VALUES (230,'Fly');
INSERT INTO animal_type (`id`,`type_name`) VALUES (231,'Flying Squirrel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (232,'Fossa');
INSERT INTO animal_type (`id`,`type_name`) VALUES (233,'Fox');
INSERT INTO animal_type (`id`,`type_name`) VALUES (234,'Fox Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (235,'French Bulldog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (236,'Frigatebird');
INSERT INTO animal_type (`id`,`type_name`) VALUES (237,'Frilled Lizard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (238,'Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (239,'Fur Seal');
INSERT INTO animal_type (`id`,`type_name`) VALUES (240,'Galapagos Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (241,'Galapagos Tortoise');
INSERT INTO animal_type (`id`,`type_name`) VALUES (242,'Gar');
INSERT INTO animal_type (`id`,`type_name`) VALUES (243,'Gecko');
INSERT INTO animal_type (`id`,`type_name`) VALUES (244,'Gentoo Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (245,'Geoffroys Tamarin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (246,'Gerbil');
INSERT INTO animal_type (`id`,`type_name`) VALUES (247,'German Pinscher');
INSERT INTO animal_type (`id`,`type_name`) VALUES (248,'German Shepherd');
INSERT INTO animal_type (`id`,`type_name`) VALUES (249,'Gharial');
INSERT INTO animal_type (`id`,`type_name`) VALUES (250,'Giant African Land Snail');
INSERT INTO animal_type (`id`,`type_name`) VALUES (251,'Giant Clam');
INSERT INTO animal_type (`id`,`type_name`) VALUES (252,'Giant Panda Bear');
INSERT INTO animal_type (`id`,`type_name`) VALUES (253,'Giant Schnauzer');
INSERT INTO animal_type (`id`,`type_name`) VALUES (254,'Gibbon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (255,'Gila Monster');
INSERT INTO animal_type (`id`,`type_name`) VALUES (256,'Giraffe');
INSERT INTO animal_type (`id`,`type_name`) VALUES (257,'Glass Lizard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (258,'Glow Worm');
INSERT INTO animal_type (`id`,`type_name`) VALUES (259,'Goat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (260,'Golden Lion Tamarin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (261,'Golden Oriole');
INSERT INTO animal_type (`id`,`type_name`) VALUES (262,'Golden Retriever');
INSERT INTO animal_type (`id`,`type_name`) VALUES (263,'Goose');
INSERT INTO animal_type (`id`,`type_name`) VALUES (264,'Gopher');
INSERT INTO animal_type (`id`,`type_name`) VALUES (265,'Gorilla');
INSERT INTO animal_type (`id`,`type_name`) VALUES (266,'Grasshopper');
INSERT INTO animal_type (`id`,`type_name`) VALUES (267,'Great Dane');
INSERT INTO animal_type (`id`,`type_name`) VALUES (268,'Great White Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (269,'Greater Swiss Mountain Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (270,'Green Bee-Eater');
INSERT INTO animal_type (`id`,`type_name`) VALUES (271,'Greenland Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (272,'Grey Mouse Lemur');
INSERT INTO animal_type (`id`,`type_name`) VALUES (273,'Grey Reef Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (274,'Grey Seal');
INSERT INTO animal_type (`id`,`type_name`) VALUES (275,'Greyhound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (276,'Grizzly Bear');
INSERT INTO animal_type (`id`,`type_name`) VALUES (277,'Grouse');
INSERT INTO animal_type (`id`,`type_name`) VALUES (278,'Guinea Fowl');
INSERT INTO animal_type (`id`,`type_name`) VALUES (279,'Guinea Pig');
INSERT INTO animal_type (`id`,`type_name`) VALUES (280,'Guppy');
INSERT INTO animal_type (`id`,`type_name`) VALUES (281,'Hammerhead Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (282,'Hamster');
INSERT INTO animal_type (`id`,`type_name`) VALUES (283,'Hare');
INSERT INTO animal_type (`id`,`type_name`) VALUES (284,'Harrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (285,'Havanese');
INSERT INTO animal_type (`id`,`type_name`) VALUES (286,'Hedgehog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (287,'Hercules Beetle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (288,'Hermit Crab');
INSERT INTO animal_type (`id`,`type_name`) VALUES (289,'Heron');
INSERT INTO animal_type (`id`,`type_name`) VALUES (290,'Highland Cattle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (291,'Himalayan');
INSERT INTO animal_type (`id`,`type_name`) VALUES (292,'Hippopotamus');
INSERT INTO animal_type (`id`,`type_name`) VALUES (293,'Honey Bee');
INSERT INTO animal_type (`id`,`type_name`) VALUES (294,'Horn Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (295,'Horned Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (296,'Horse');
INSERT INTO animal_type (`id`,`type_name`) VALUES (297,'Horseshoe Crab');
INSERT INTO animal_type (`id`,`type_name`) VALUES (298,'Howler Monkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (299,'Human');
INSERT INTO animal_type (`id`,`type_name`) VALUES (300,'Humboldt Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (301,'Hummingbird');
INSERT INTO animal_type (`id`,`type_name`) VALUES (302,'Humpback Whale');
INSERT INTO animal_type (`id`,`type_name`) VALUES (303,'Hyena');
INSERT INTO animal_type (`id`,`type_name`) VALUES (304,'Ibis');
INSERT INTO animal_type (`id`,`type_name`) VALUES (305,'Ibizan Hound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (306,'Iguana');
INSERT INTO animal_type (`id`,`type_name`) VALUES (307,'Impala');
INSERT INTO animal_type (`id`,`type_name`) VALUES (308,'Indian Elephant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (309,'Indian Palm Squirrel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (310,'Indian Rhinoceros');
INSERT INTO animal_type (`id`,`type_name`) VALUES (311,'Indian Star Tortoise');
INSERT INTO animal_type (`id`,`type_name`) VALUES (312,'Indochinese Tiger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (313,'Indri');
INSERT INTO animal_type (`id`,`type_name`) VALUES (314,'Insect');
INSERT INTO animal_type (`id`,`type_name`) VALUES (315,'Irish Setter');
INSERT INTO animal_type (`id`,`type_name`) VALUES (316,'Irish WolfHound');
INSERT INTO animal_type (`id`,`type_name`) VALUES (317,'Jack Russel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (318,'Jackal');
INSERT INTO animal_type (`id`,`type_name`) VALUES (319,'Jaguar');
INSERT INTO animal_type (`id`,`type_name`) VALUES (320,'Japanese Chin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (321,'Japanese Macaque');
INSERT INTO animal_type (`id`,`type_name`) VALUES (322,'Javan Rhinoceros');
INSERT INTO animal_type (`id`,`type_name`) VALUES (323,'Javanese');
INSERT INTO animal_type (`id`,`type_name`) VALUES (324,'Jellyfish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (325,'Kakapo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (326,'Kangaroo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (327,'Keel Billed Toucan');
INSERT INTO animal_type (`id`,`type_name`) VALUES (328,'Killer Whale');
INSERT INTO animal_type (`id`,`type_name`) VALUES (329,'King Crab');
INSERT INTO animal_type (`id`,`type_name`) VALUES (330,'King Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (331,'Kingfisher');
INSERT INTO animal_type (`id`,`type_name`) VALUES (332,'Kiwi');
INSERT INTO animal_type (`id`,`type_name`) VALUES (333,'Koala');
INSERT INTO animal_type (`id`,`type_name`) VALUES (334,'Komodo Dragon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (335,'Kudu');
INSERT INTO animal_type (`id`,`type_name`) VALUES (336,'Labradoodle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (337,'Labrador Retriever');
INSERT INTO animal_type (`id`,`type_name`) VALUES (338,'Ladybird');
INSERT INTO animal_type (`id`,`type_name`) VALUES (339,'Leaf-Tailed Gecko');
INSERT INTO animal_type (`id`,`type_name`) VALUES (340,'Lemming');
INSERT INTO animal_type (`id`,`type_name`) VALUES (341,'Lemur');
INSERT INTO animal_type (`id`,`type_name`) VALUES (342,'Leopard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (343,'Leopard Cat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (344,'Leopard Seal');
INSERT INTO animal_type (`id`,`type_name`) VALUES (345,'Leopard Tortoise');
INSERT INTO animal_type (`id`,`type_name`) VALUES (346,'Liger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (347,'Lion');
INSERT INTO animal_type (`id`,`type_name`) VALUES (348,'Lionfish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (349,'Little Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (350,'Lizard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (351,'Llama');
INSERT INTO animal_type (`id`,`type_name`) VALUES (352,'Lobster');
INSERT INTO animal_type (`id`,`type_name`) VALUES (353,'Long-Eared Owl');
INSERT INTO animal_type (`id`,`type_name`) VALUES (354,'Lynx');
INSERT INTO animal_type (`id`,`type_name`) VALUES (355,'');
INSERT INTO animal_type (`id`,`type_name`) VALUES (356,'Macaroni Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (357,'Macaw');
INSERT INTO animal_type (`id`,`type_name`) VALUES (358,'Magellanic Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (359,'Magpie');
INSERT INTO animal_type (`id`,`type_name`) VALUES (360,'Maine Coon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (361,'Malayan Civet');
INSERT INTO animal_type (`id`,`type_name`) VALUES (362,'Malayan Tiger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (363,'Maltese');
INSERT INTO animal_type (`id`,`type_name`) VALUES (364,'Manatee');
INSERT INTO animal_type (`id`,`type_name`) VALUES (365,'Mandrill');
INSERT INTO animal_type (`id`,`type_name`) VALUES (366,'Manta Ray');
INSERT INTO animal_type (`id`,`type_name`) VALUES (367,'Marine Toad');
INSERT INTO animal_type (`id`,`type_name`) VALUES (368,'Markhor');
INSERT INTO animal_type (`id`,`type_name`) VALUES (369,'Marsh Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (370,'Masked Palm Civet');
INSERT INTO animal_type (`id`,`type_name`) VALUES (371,'Mastiff');
INSERT INTO animal_type (`id`,`type_name`) VALUES (372,'Mayfly');
INSERT INTO animal_type (`id`,`type_name`) VALUES (373,'Meerkat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (374,'Millipede');
INSERT INTO animal_type (`id`,`type_name`) VALUES (375,'Minke Whale');
INSERT INTO animal_type (`id`,`type_name`) VALUES (376,'Mole');
INSERT INTO animal_type (`id`,`type_name`) VALUES (377,'Molly');
INSERT INTO animal_type (`id`,`type_name`) VALUES (378,'Mongoose');
INSERT INTO animal_type (`id`,`type_name`) VALUES (379,'Mongrel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (380,'Monitor Lizard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (381,'Monkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (382,'Monte Iberia Eleuth');
INSERT INTO animal_type (`id`,`type_name`) VALUES (383,'Moorhen');
INSERT INTO animal_type (`id`,`type_name`) VALUES (384,'Moose');
INSERT INTO animal_type (`id`,`type_name`) VALUES (385,'Moray Eel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (386,'Moth');
INSERT INTO animal_type (`id`,`type_name`) VALUES (387,'Mountain Gorilla');
INSERT INTO animal_type (`id`,`type_name`) VALUES (388,'Mountain Lion');
INSERT INTO animal_type (`id`,`type_name`) VALUES (389,'Mouse');
INSERT INTO animal_type (`id`,`type_name`) VALUES (390,'Mule');
INSERT INTO animal_type (`id`,`type_name`) VALUES (391,'Neanderthal');
INSERT INTO animal_type (`id`,`type_name`) VALUES (392,'Neapolitan Mastiff');
INSERT INTO animal_type (`id`,`type_name`) VALUES (393,'Newfoundland');
INSERT INTO animal_type (`id`,`type_name`) VALUES (394,'Newt');
INSERT INTO animal_type (`id`,`type_name`) VALUES (395,'Nightingale');
INSERT INTO animal_type (`id`,`type_name`) VALUES (396,'Norfolk Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (397,'Norwegian Forest');
INSERT INTO animal_type (`id`,`type_name`) VALUES (398,'Numbat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (399,'Nurse Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (400,'Ocelot');
INSERT INTO animal_type (`id`,`type_name`) VALUES (401,'Octopus');
INSERT INTO animal_type (`id`,`type_name`) VALUES (402,'Okapi');
INSERT INTO animal_type (`id`,`type_name`) VALUES (403,'Old English Sheepdog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (404,'Olm');
INSERT INTO animal_type (`id`,`type_name`) VALUES (405,'Opossum');
INSERT INTO animal_type (`id`,`type_name`) VALUES (406,'Orang-utan');
INSERT INTO animal_type (`id`,`type_name`) VALUES (407,'Ostrich');
INSERT INTO animal_type (`id`,`type_name`) VALUES (408,'Otter');
INSERT INTO animal_type (`id`,`type_name`) VALUES (409,'Oyster');
INSERT INTO animal_type (`id`,`type_name`) VALUES (410,'Pademelon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (411,'Panther');
INSERT INTO animal_type (`id`,`type_name`) VALUES (412,'Parrot');
INSERT INTO animal_type (`id`,`type_name`) VALUES (413,'Patas Monkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (414,'Peacock');
INSERT INTO animal_type (`id`,`type_name`) VALUES (415,'Pekingese');
INSERT INTO animal_type (`id`,`type_name`) VALUES (416,'Pelican');
INSERT INTO animal_type (`id`,`type_name`) VALUES (417,'Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (418,'Persian');
INSERT INTO animal_type (`id`,`type_name`) VALUES (419,'Pheasant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (420,'Pied Tamarin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (421,'Pig');
INSERT INTO animal_type (`id`,`type_name`) VALUES (422,'Pika');
INSERT INTO animal_type (`id`,`type_name`) VALUES (423,'Pike');
INSERT INTO animal_type (`id`,`type_name`) VALUES (424,'Pink Fairy Armadillo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (425,'Piranha');
INSERT INTO animal_type (`id`,`type_name`) VALUES (426,'Platypus');
INSERT INTO animal_type (`id`,`type_name`) VALUES (427,'Pointer');
INSERT INTO animal_type (`id`,`type_name`) VALUES (428,'Poison Dart Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (429,'Polar Bear');
INSERT INTO animal_type (`id`,`type_name`) VALUES (430,'Pond Skater');
INSERT INTO animal_type (`id`,`type_name`) VALUES (431,'Poodle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (432,'Pool Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (433,'Porcupine');
INSERT INTO animal_type (`id`,`type_name`) VALUES (434,'Possum');
INSERT INTO animal_type (`id`,`type_name`) VALUES (435,'Prawn');
INSERT INTO animal_type (`id`,`type_name`) VALUES (436,'Proboscis Monkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (437,'Puffer Fish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (438,'Puffin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (439,'Pug');
INSERT INTO animal_type (`id`,`type_name`) VALUES (440,'Puma');
INSERT INTO animal_type (`id`,`type_name`) VALUES (441,'Purple Emperor');
INSERT INTO animal_type (`id`,`type_name`) VALUES (442,'Puss Moth');
INSERT INTO animal_type (`id`,`type_name`) VALUES (443,'Pygmy Hippopotamus');
INSERT INTO animal_type (`id`,`type_name`) VALUES (444,'Pygmy Marmoset');
INSERT INTO animal_type (`id`,`type_name`) VALUES (445,'Quail');
INSERT INTO animal_type (`id`,`type_name`) VALUES (446,'Quetzal');
INSERT INTO animal_type (`id`,`type_name`) VALUES (447,'Quokka');
INSERT INTO animal_type (`id`,`type_name`) VALUES (448,'Quoll');
INSERT INTO animal_type (`id`,`type_name`) VALUES (449,'Rabbit');
INSERT INTO animal_type (`id`,`type_name`) VALUES (450,'Raccoon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (451,'Raccoon Dog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (452,'Radiated Tortoise');
INSERT INTO animal_type (`id`,`type_name`) VALUES (453,'Ragdoll');
INSERT INTO animal_type (`id`,`type_name`) VALUES (454,'Rat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (455,'Rattlesnake');
INSERT INTO animal_type (`id`,`type_name`) VALUES (456,'Red Knee Tarantula');
INSERT INTO animal_type (`id`,`type_name`) VALUES (457,'Red Panda');
INSERT INTO animal_type (`id`,`type_name`) VALUES (458,'Red Wolf');
INSERT INTO animal_type (`id`,`type_name`) VALUES (459,'Red-handed Tamarin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (460,'Reindeer');
INSERT INTO animal_type (`id`,`type_name`) VALUES (461,'Rhinoceros');
INSERT INTO animal_type (`id`,`type_name`) VALUES (462,'River Dolphin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (463,'River Turtle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (464,'Robin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (465,'Rock Hyrax');
INSERT INTO animal_type (`id`,`type_name`) VALUES (466,'Rockhopper Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (467,'Roseate Spoonbill');
INSERT INTO animal_type (`id`,`type_name`) VALUES (468,'Rottweiler');
INSERT INTO animal_type (`id`,`type_name`) VALUES (469,'Royal Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (470,'Russian Blue');
INSERT INTO animal_type (`id`,`type_name`) VALUES (471,'Sabre-Toothed Tiger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (472,'Saint Bernard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (473,'Salamander');
INSERT INTO animal_type (`id`,`type_name`) VALUES (474,'Sand Lizard');
INSERT INTO animal_type (`id`,`type_name`) VALUES (475,'Saola');
INSERT INTO animal_type (`id`,`type_name`) VALUES (476,'Scorpion');
INSERT INTO animal_type (`id`,`type_name`) VALUES (477,'Scorpion Fish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (478,'Sea Dragon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (479,'Sea Lion');
INSERT INTO animal_type (`id`,`type_name`) VALUES (480,'Sea Otter');
INSERT INTO animal_type (`id`,`type_name`) VALUES (481,'Sea Slug');
INSERT INTO animal_type (`id`,`type_name`) VALUES (482,'Sea Squirt');
INSERT INTO animal_type (`id`,`type_name`) VALUES (483,'Sea Turtle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (484,'Sea Urchin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (485,'Seahorse');
INSERT INTO animal_type (`id`,`type_name`) VALUES (486,'Seal');
INSERT INTO animal_type (`id`,`type_name`) VALUES (487,'Serval');
INSERT INTO animal_type (`id`,`type_name`) VALUES (488,'Sheep');
INSERT INTO animal_type (`id`,`type_name`) VALUES (489,'Shih Tzu');
INSERT INTO animal_type (`id`,`type_name`) VALUES (490,'Shrimp');
INSERT INTO animal_type (`id`,`type_name`) VALUES (491,'Siamese');
INSERT INTO animal_type (`id`,`type_name`) VALUES (492,'Siamese Fighting Fish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (493,'Siberian');
INSERT INTO animal_type (`id`,`type_name`) VALUES (494,'Siberian Husky');
INSERT INTO animal_type (`id`,`type_name`) VALUES (495,'Siberian Tiger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (496,'Silver Dollar');
INSERT INTO animal_type (`id`,`type_name`) VALUES (497,'Skunk');
INSERT INTO animal_type (`id`,`type_name`) VALUES (498,'Sloth');
INSERT INTO animal_type (`id`,`type_name`) VALUES (499,'Slow Worm');
INSERT INTO animal_type (`id`,`type_name`) VALUES (500,'Snail');
INSERT INTO animal_type (`id`,`type_name`) VALUES (501,'Snake');
INSERT INTO animal_type (`id`,`type_name`) VALUES (502,'Snapping Turtle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (503,'Snowshoe');
INSERT INTO animal_type (`id`,`type_name`) VALUES (504,'Snowy Owl');
INSERT INTO animal_type (`id`,`type_name`) VALUES (505,'Somali');
INSERT INTO animal_type (`id`,`type_name`) VALUES (506,'South China Tiger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (507,'Spadefoot Toad');
INSERT INTO animal_type (`id`,`type_name`) VALUES (508,'Sparrow');
INSERT INTO animal_type (`id`,`type_name`) VALUES (509,'Spectacled Bear');
INSERT INTO animal_type (`id`,`type_name`) VALUES (510,'Sperm Whale');
INSERT INTO animal_type (`id`,`type_name`) VALUES (511,'Spider Monkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (512,'Spiny Dogfish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (513,'Sponge');
INSERT INTO animal_type (`id`,`type_name`) VALUES (514,'Squid');
INSERT INTO animal_type (`id`,`type_name`) VALUES (515,'Squirrel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (516,'Squirrel Monkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (517,'Sri Lankan Elephant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (518,'Staffordshire Bull Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (519,'Stag Beetle');
INSERT INTO animal_type (`id`,`type_name`) VALUES (520,'Starfish');
INSERT INTO animal_type (`id`,`type_name`) VALUES (521,'Stellers Sea Cow');
INSERT INTO animal_type (`id`,`type_name`) VALUES (522,'Stick Insect');
INSERT INTO animal_type (`id`,`type_name`) VALUES (523,'Stingray');
INSERT INTO animal_type (`id`,`type_name`) VALUES (524,'Stoat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (525,'Striped Rocket Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (526,'Sumatran Elephant');
INSERT INTO animal_type (`id`,`type_name`) VALUES (527,'Sumatran Orang-utan');
INSERT INTO animal_type (`id`,`type_name`) VALUES (528,'Sumatran Rhinoceros');
INSERT INTO animal_type (`id`,`type_name`) VALUES (529,'Sumatran Tiger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (530,'Sun Bear');
INSERT INTO animal_type (`id`,`type_name`) VALUES (531,'Swan');
INSERT INTO animal_type (`id`,`type_name`) VALUES (532,'Tang');
INSERT INTO animal_type (`id`,`type_name`) VALUES (533,'Tapanuli Orang-utan');
INSERT INTO animal_type (`id`,`type_name`) VALUES (534,'Tapir');
INSERT INTO animal_type (`id`,`type_name`) VALUES (535,'Tarsier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (536,'Tasmanian Devil');
INSERT INTO animal_type (`id`,`type_name`) VALUES (537,'Tawny Owl');
INSERT INTO animal_type (`id`,`type_name`) VALUES (538,'Termite');
INSERT INTO animal_type (`id`,`type_name`) VALUES (539,'Tetra');
INSERT INTO animal_type (`id`,`type_name`) VALUES (540,'Thorny Devil');
INSERT INTO animal_type (`id`,`type_name`) VALUES (541,'Tibetan Mastiff');
INSERT INTO animal_type (`id`,`type_name`) VALUES (542,'Tiffany');
INSERT INTO animal_type (`id`,`type_name`) VALUES (543,'Tiger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (544,'Tiger Salamander');
INSERT INTO animal_type (`id`,`type_name`) VALUES (545,'Tiger Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (546,'Tortoise');
INSERT INTO animal_type (`id`,`type_name`) VALUES (547,'Toucan');
INSERT INTO animal_type (`id`,`type_name`) VALUES (548,'Tree Frog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (549,'Tropicbird');
INSERT INTO animal_type (`id`,`type_name`) VALUES (550,'Tuatara');
INSERT INTO animal_type (`id`,`type_name`) VALUES (551,'Turkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (552,'Turkish Angora');
INSERT INTO animal_type (`id`,`type_name`) VALUES (553,'Uakari');
INSERT INTO animal_type (`id`,`type_name`) VALUES (554,'Uguisu');
INSERT INTO animal_type (`id`,`type_name`) VALUES (555,'Umbrellabird');
INSERT INTO animal_type (`id`,`type_name`) VALUES (556,'Vampire Bat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (557,'Vervet Monkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (558,'Vulture');
INSERT INTO animal_type (`id`,`type_name`) VALUES (559,'Wallaby');
INSERT INTO animal_type (`id`,`type_name`) VALUES (560,'Walrus');
INSERT INTO animal_type (`id`,`type_name`) VALUES (561,'Warthog');
INSERT INTO animal_type (`id`,`type_name`) VALUES (562,'Wasp');
INSERT INTO animal_type (`id`,`type_name`) VALUES (563,'Water Buffalo');
INSERT INTO animal_type (`id`,`type_name`) VALUES (564,'Water Dragon');
INSERT INTO animal_type (`id`,`type_name`) VALUES (565,'Water Vole');
INSERT INTO animal_type (`id`,`type_name`) VALUES (566,'Weasel');
INSERT INTO animal_type (`id`,`type_name`) VALUES (567,'Welsh Corgi');
INSERT INTO animal_type (`id`,`type_name`) VALUES (568,'West Highland Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (569,'Western Gorilla');
INSERT INTO animal_type (`id`,`type_name`) VALUES (570,'Western Lowland Gorilla');
INSERT INTO animal_type (`id`,`type_name`) VALUES (571,'Whale Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (572,'Whippet');
INSERT INTO animal_type (`id`,`type_name`) VALUES (573,'White Faced Capuchin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (574,'White Rhinoceros');
INSERT INTO animal_type (`id`,`type_name`) VALUES (575,'White Tiger');
INSERT INTO animal_type (`id`,`type_name`) VALUES (576,'Wild Boar');
INSERT INTO animal_type (`id`,`type_name`) VALUES (577,'Wildebeest');
INSERT INTO animal_type (`id`,`type_name`) VALUES (578,'Wolf');
INSERT INTO animal_type (`id`,`type_name`) VALUES (579,'Wolverine');
INSERT INTO animal_type (`id`,`type_name`) VALUES (580,'Wombat');
INSERT INTO animal_type (`id`,`type_name`) VALUES (581,'Woodlouse');
INSERT INTO animal_type (`id`,`type_name`) VALUES (582,'Woodpecker');
INSERT INTO animal_type (`id`,`type_name`) VALUES (583,'Woolly Mammoth');
INSERT INTO animal_type (`id`,`type_name`) VALUES (584,'Woolly Monkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (585,'Wrasse');
INSERT INTO animal_type (`id`,`type_name`) VALUES (586,'X-Ray Tetra');
INSERT INTO animal_type (`id`,`type_name`) VALUES (587,'Yak');
INSERT INTO animal_type (`id`,`type_name`) VALUES (588,'Yellow-Eyed Penguin');
INSERT INTO animal_type (`id`,`type_name`) VALUES (589,'Yorkshire Terrier');
INSERT INTO animal_type (`id`,`type_name`) VALUES (590,'Zebra');
INSERT INTO animal_type (`id`,`type_name`) VALUES (591,'Zebra Shark');
INSERT INTO animal_type (`id`,`type_name`) VALUES (592,'Zebu');
INSERT INTO animal_type (`id`,`type_name`) VALUES (593,'Zonkey');
INSERT INTO animal_type (`id`,`type_name`) VALUES (594,'Zorse');



/*
-- Query: select * from food
LIMIT 0, 1000

-- Date: 2023-03-12 15:57
*/
INSERT INTO food (`food_id`,`main_food`) VALUES (1,'Angelica');
INSERT INTO food (`food_id`,`main_food`) VALUES (2,'Savoycabbage');
INSERT INTO food (`food_id`,`main_food`) VALUES (3,'Silverlinden');
INSERT INTO food (`food_id`,`main_food`) VALUES (4,'Kiwi');
INSERT INTO food (`food_id`,`main_food`) VALUES (5,'Allium(Onion)');
INSERT INTO food (`food_id`,`main_food`) VALUES (6,'Gardenonion');
INSERT INTO food (`food_id`,`main_food`) VALUES (7,'Leek');
INSERT INTO food (`food_id`,`main_food`) VALUES (8,'Garlic');
INSERT INTO food (`food_id`,`main_food`) VALUES (9,'Chives');
INSERT INTO food (`food_id`,`main_food`) VALUES (10,'Lemonverbena');
INSERT INTO food (`food_id`,`main_food`) VALUES (11,'Cashewnut');
INSERT INTO food (`food_id`,`main_food`) VALUES (12,'Pineapple');
INSERT INTO food (`food_id`,`main_food`) VALUES (13,'Dill');
INSERT INTO food (`food_id`,`main_food`) VALUES (14,'Custardapple');
INSERT INTO food (`food_id`,`main_food`) VALUES (15,'Wildcelery');
INSERT INTO food (`food_id`,`main_food`) VALUES (16,'Peanut');
INSERT INTO food (`food_id`,`main_food`) VALUES (17,'Burdock');
INSERT INTO food (`food_id`,`main_food`) VALUES (18,'Horseradish');
INSERT INTO food (`food_id`,`main_food`) VALUES (19,'Tarragon');
INSERT INTO food (`food_id`,`main_food`) VALUES (20,'Mugwort');
INSERT INTO food (`food_id`,`main_food`) VALUES (21,'Asparagus');
INSERT INTO food (`food_id`,`main_food`) VALUES (22,'Oat');
INSERT INTO food (`food_id`,`main_food`) VALUES (23,'Starfruit');
INSERT INTO food (`food_id`,`main_food`) VALUES (24,'Brazilnut');
INSERT INTO food (`food_id`,`main_food`) VALUES (25,'Commonbeet');
INSERT INTO food (`food_id`,`main_food`) VALUES (26,'Borage');
INSERT INTO food (`food_id`,`main_food`) VALUES (27,'Chinesemustard');
INSERT INTO food (`food_id`,`main_food`) VALUES (28,'Swede');
INSERT INTO food (`food_id`,`main_food`) VALUES (29,'Rape');
INSERT INTO food (`food_id`,`main_food`) VALUES (30,'Commoncabbage');
INSERT INTO food (`food_id`,`main_food`) VALUES (31,'Cauliflower');
INSERT INTO food (`food_id`,`main_food`) VALUES (32,'Brusselsprouts');
INSERT INTO food (`food_id`,`main_food`) VALUES (33,'Kohlrabi');
INSERT INTO food (`food_id`,`main_food`) VALUES (34,'Broccoli');
INSERT INTO food (`food_id`,`main_food`) VALUES (35,'Chinesecabbage');
INSERT INTO food (`food_id`,`main_food`) VALUES (36,'Turnip');
INSERT INTO food (`food_id`,`main_food`) VALUES (37,'Pigeonpea');
INSERT INTO food (`food_id`,`main_food`) VALUES (38,'Tea');
INSERT INTO food (`food_id`,`main_food`) VALUES (39,'Capers');
INSERT INTO food (`food_id`,`main_food`) VALUES (40,'Pepper(C.annuum)');
INSERT INTO food (`food_id`,`main_food`) VALUES (41,'Papaya');
INSERT INTO food (`food_id`,`main_food`) VALUES (42,'Safflower');
INSERT INTO food (`food_id`,`main_food`) VALUES (43,'Caraway');
INSERT INTO food (`food_id`,`main_food`) VALUES (44,'Pecannut');
INSERT INTO food (`food_id`,`main_food`) VALUES (45,'Chestnut');
INSERT INTO food (`food_id`,`main_food`) VALUES (46,'Romancamomile');
INSERT INTO food (`food_id`,`main_food`) VALUES (47,'Chickpea');
INSERT INTO food (`food_id`,`main_food`) VALUES (48,'Endive');
INSERT INTO food (`food_id`,`main_food`) VALUES (49,'Chicory');
INSERT INTO food (`food_id`,`main_food`) VALUES (50,'Chinesecinnamon');
INSERT INTO food (`food_id`,`main_food`) VALUES (51,'Ceyloncinnamon');
INSERT INTO food (`food_id`,`main_food`) VALUES (52,'Watermelon');
INSERT INTO food (`food_id`,`main_food`) VALUES (53,'Lime');
INSERT INTO food (`food_id`,`main_food`) VALUES (54,'Lemon');
INSERT INTO food (`food_id`,`main_food`) VALUES (55,'Pummelo');



INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (1,"Amber","Guerrero","337-5174 Adipiscing Street","1-785-667-6578","amet.risus@hotmail.net"),
  (2,"Lareina","Whitfield","197-2032 Morbi Avenue","(823) 257-2252","mauris.aliquam.eu@aol.edu"),
  (3,"Courtney","Burnett","Ap #940-1651 Morbi Av.","1-146-845-6219","vitae.dolor.donec@protonmail.edu"),
  (4,"Elizabeth","Carpenter","508-3340 Semper. Rd.","(844) 456-6751","magna.suspendisse@google.ca"),
  (5,"Olivia","Owens","Ap #571-7261 Urna Ave","1-756-227-4055","cras@yahoo.edu"),
  (6,"Giselle","Pitts","Ap #472-7991 Cubilia Av.","(307) 215-7155","ultrices@google.com"),
  (7,"Cole","Hill","346-8093 Etiam Av.","1-421-970-7885","consectetuer.adipiscing@icloud.couk"),
  (8,"MacKensie","Lopez","Ap #963-3239 Facilisis Rd.","1-701-954-9266","bibendum.sed.est@google.edu"),
  (9,"Riley","Savage","P.O. Box 338, 8505 Mi. St.","(755) 845-8933","proin.sed@protonmail.couk"),
  (10,"Megan","Rowland","369-806 Non, Avenue","(408) 845-6354","magnis.dis.parturient@icloud.ca");
INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (11,"Aphrodite","Rowland","124-2952 Dolor, St.","(383) 118-4361","et.lacinia@icloud.edu"),
  (12,"Olympia","Wallace","Ap #656-5465 Urna Av.","1-481-828-8527","porttitor.tellus@yahoo.ca"),
  (13,"Wallace","Prince","547-5950 Imperdiet Avenue","1-537-403-3336","aliquam.arcu@hotmail.edu"),
  (14,"Tanya","Daniels","741-381 Risus. Street","1-998-714-3385","lacinia.at@hotmail.couk"),
  (15,"Anastasia","Baxter","119 Porttitor Rd.","1-313-811-3376","est.arcu@hotmail.org"),
  (16,"Amir","Castro","Ap #652-134 Ante Av.","1-943-181-5455","at@icloud.com"),
  (17,"Chava","Cleveland","3166 Vestibulum Av.","(472) 446-6171","in.faucibus.orci@icloud.edu"),
  (18,"Reuben","Wade","242-8343 Vitae Rd.","1-826-273-9137","aliquam.adipiscing@google.com"),
  (19,"Aurelia","Ingram","P.O. Box 562, 2092 Malesuada St.","1-236-478-6384","vitae@protonmail.net"),
  (20,"Chancellor","Mcfarland","474-8349 Integer St.","(347) 668-6347","auctor.non@protonmail.ca");
INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (21,"Anastasia","Rice","640-8682 Vitae St.","1-128-738-5587","risus.nunc.ac@hotmail.org"),
  (22,"Gemma","Ashley","Ap #817-5474 Nibh. Av.","(873) 908-3214","at.pretium.aliquet@protonmail.couk"),
  (23,"Shellie","Burks","306-8636 Turpis St.","1-858-571-2394","ac.mattis.ornare@outlook.org"),
  (24,"Cleo","Orr","579-9403 Nec, Street","(785) 831-1565","fermentum.convallis@hotmail.org"),
  (25,"Gray","Harrington","800-5972 Amet Street","1-893-289-1627","scelerisque@yahoo.ca"),
  (26,"Felix","Sexton","546-3336 At, Rd.","1-891-714-3524","ipsum.sodales@yahoo.com"),
  (27,"Adam","Burt","529-2386 Nullam Av.","1-835-717-4438","malesuada.ut@google.edu"),
  (28,"Harlan","Moss","Ap #930-4811 Lorem, Rd.","(541) 244-5311","eros.nam@icloud.com"),
  (29,"Ursula","Hobbs","7791 Proin Av.","1-843-131-4727","ridiculus@hotmail.couk"),
  (30,"Ian","Savage","7523 Molestie Street","(788) 521-1343","hendrerit.id.ante@protonmail.org");
INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (31,"Melodie","Tucker","716-6601 Curae Av.","1-285-515-5412","est.arcu.ac@outlook.ca"),
  (32,"Quamar","Mcbride","344-3449 Mauris Rd.","(466) 391-6431","facilisis@protonmail.couk"),
  (33,"Brett","Lang","800-4031 Eget Rd.","(681) 476-8478","a.dui.cras@yahoo.edu"),
  (34,"Duncan","Bond","5775 Aenean Av.","(306) 767-9776","amet.consectetuer@outlook.com"),
  (35,"Conan","David","Ap #701-6273 Aliquam St.","(258) 253-6180","fringilla.mi.lacinia@google.ca"),
  (36,"Phyllis","Jensen","Ap #295-6575 Integer St.","(843) 244-8311","tempor.arcu@protonmail.com"),
  (37,"Meredith","Spears","893-5285 Luctus Rd.","(532) 546-0150","aptent.taciti@protonmail.com"),
  (38,"Whoopi","Lowe","P.O. Box 321, 6188 Velit Street","(197) 884-3314","integer.in@hotmail.org"),
  (39,"Sacha","Fuller","634-8842 Elementum, Ave","(438) 181-9704","nunc.risus@google.net"),
  (40,"Idona","Powell","Ap #378-1022 Molestie Ave","1-824-736-6350","ut@hotmail.edu");
INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (41,"Jarrod","Frederick","Ap #264-2427 Libero Ave","1-255-632-8149","ullamcorper.duis@hotmail.org"),
  (42,"Gray","Webb","430-667 Nec Street","1-959-174-5867","purus@hotmail.ca"),
  (43,"Hakeem","Townsend","P.O. Box 971, 1428 Consectetuer, St.","1-245-215-3186","suspendisse@hotmail.com"),
  (44,"Noble","Zimmerman","121-7333 Consequat St.","(869) 386-3839","rutrum.lorem@icloud.ca"),
  (45,"Lawrence","Gay","717-6840 Donec Rd.","1-235-922-6415","tellus@google.com"),
  (46,"Eleanor","Burke","526-4681 Aliquam Avenue","1-288-183-9096","fusce.aliquam@yahoo.ca"),
  (47,"Shaeleigh","Huff","P.O. Box 643, 9054 Lorem. St.","(231) 471-8586","dictum@hotmail.com"),
  (48,"Zelenia","Ingram","P.O. Box 657, 8991 Imperdiet Avenue","(543) 864-8652","aenean.sed.pede@yahoo.com"),
  (49,"Derek","Mccullough","727-7344 Enim. Rd.","1-471-202-2626","sem.egestas.blandit@outlook.edu"),
  (50,"Blythe","Carr","Ap #244-2373 Primis St.","(578) 585-2758","bibendum.fermentum@protonmail.org");
INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (51,"Urielle","Kirkland","Ap #580-6696 Neque Street","1-415-637-4598","euismod@icloud.couk"),
  (52,"Maia","Fischer","P.O. Box 338, 9706 Nunc St.","1-781-539-3372","et.magnis@yahoo.net"),
  (53,"Justina","Lamb","P.O. Box 626, 499 Suspendisse Avenue","(652) 538-4884","id.mollis.nec@hotmail.edu"),
  (54,"Elaine","Gardner","Ap #967-5947 Malesuada St.","1-608-715-7496","est.congue@yahoo.edu"),
  (55,"Eleanor","Roman","P.O. Box 664, 4961 Phasellus Avenue","(881) 284-2558","orci.adipiscing@outlook.ca"),
  (56,"Raven","Bird","Ap #633-3900 In Road","(739) 753-1832","nullam.velit@hotmail.org"),
  (57,"Moses","Norman","Ap #304-5376 Nunc Street","1-860-654-7780","facilisis.eget.ipsum@google.couk"),
  (58,"Bree","Ratliff","Ap #389-3594 Amet Avenue","1-491-313-7602","nisi.mauris.nulla@hotmail.edu"),
  (59,"Yuli","Gaines","637-9129 Accumsan Rd.","1-277-254-4353","ligula@outlook.ca"),
  (60,"Aaron","Horn","3025 Consequat St.","1-197-489-4883","quis.urna.nunc@hotmail.org");
INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (61,"Declan","Holcomb","Ap #902-5408 Ultricies Rd.","1-920-632-2493","mauris.quis@protonmail.com"),
  (62,"Iola","Beasley","Ap #717-671 Convallis, Rd.","(256) 276-3161","nec.ante@outlook.org"),
  (63,"Madonna","Manning","766-4852 Nibh Rd.","1-353-198-8855","a.ultricies@yahoo.ca"),
  (64,"Vanna","Whitehead","P.O. Box 211, 5639 Donec Ave","1-585-750-3844","donec@protonmail.com"),
  (65,"Hamilton","Dale","8230 Egestas St.","1-426-947-7475","placerat.velit.quisque@hotmail.edu"),
  (66,"Jaden","Gordon","442-9019 Duis Rd.","1-387-782-8235","tellus.justo.sit@protonmail.edu"),
  (67,"Kerry","Ferrell","445-991 Posuere Street","(634) 283-2832","libero.at@protonmail.com"),
  (68,"Fatima","Holcomb","4961 Aliquam Rd.","1-248-784-0584","gravida@hotmail.couk"),
  (69,"Keith","Briggs","P.O. Box 763, 786 Sit Road","1-516-745-4072","nec.eleifend.non@icloud.com"),
  (70,"Cara","Wyatt","255-1398 Lorem Av.","1-657-863-7353","eu.turpis@aol.net");
INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (71,"Melinda","Carlson","Ap #136-1590 Eget Av.","1-378-341-8321","curabitur.sed@yahoo.couk"),
  (72,"Bradley","Morin","Ap #197-3988 Purus St.","(662) 406-6445","morbi.vehicula@outlook.ca"),
  (73,"Dillon","Cantrell","Ap #734-1745 Tempus Road","(585) 886-8604","a.magna@protonmail.edu"),
  (74,"Kylan","Collier","278-4981 Nec, St.","1-319-327-2805","ut.ipsum@aol.ca"),
  (75,"Stacey","Raymond","Ap #135-1946 Risus. Rd.","1-101-689-9564","amet.lorem@hotmail.com"),
  (76,"Victor","Moss","206-5388 Consequat St.","1-611-568-8175","cursus.non@protonmail.com"),
  (77,"Austin","Jimenez","Ap #144-7932 Pharetra, Ave","1-268-232-1515","sociosqu.ad@hotmail.org"),
  (78,"Evan","Wyatt","Ap #612-4800 Blandit Avenue","(406) 855-5179","etiam.bibendum@hotmail.edu"),
  (79,"Althea","Wyatt","291-2048 Dui. Rd.","(557) 258-3546","pede.praesent@yahoo.net"),
  (80,"Arsenio","Finch","6170 Convallis Av.","1-422-821-4384","quisque.fringilla@icloud.net");
INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (81,"Clark","Randall","8528 Curabitur Street","(632) 381-9387","tincidunt.pede@icloud.net"),
  (82,"Clementine","Brennan","P.O. Box 622, 5409 Vel Ave","1-511-788-3370","erat.vel.pede@icloud.couk"),
  (83,"Price","Levy","P.O. Box 792, 4744 Elit Ave","(231) 344-7212","nunc.ac@outlook.couk"),
  (84,"Malachi","Rice","319-6046 Neque. Rd.","1-283-344-5381","libero.et.tristique@hotmail.org"),
  (85,"Lacota","Molina","820-3150 Elit, St.","1-371-776-1208","lobortis.ultrices@outlook.net"),
  (86,"Alexis","Suarez","767-4956 Sollicitudin Street","1-131-575-1234","sed.est@outlook.org"),
  (87,"Cynthia","Conway","P.O. Box 402, 3128 Tristique Rd.","(143) 537-9964","mauris.erat.eget@google.edu"),
  (88,"Maggy","Church","Ap #178-1611 Nec Road","1-521-379-4579","nec@protonmail.com"),
  (89,"Guy","Shaw","P.O. Box 996, 8687 Porttitor Rd.","(156) 127-9973","eu.erat@outlook.net"),
  (90,"Oliver","Goff","P.O. Box 711, 527 Gravida Road","1-893-971-4747","magna.praesent.interdum@yahoo.org");
INSERT INTO `owner` (`owner_id`,`owner_first_name`,`owner_last_name`,`owner_address`,`owner_phone_number`,`owner_email`)
VALUES
  (91,"August","Oneil","Ap #636-6205 In Rd.","(849) 288-6168","feugiat.non.lobortis@hotmail.net"),
  (92,"Thomas","Gray","P.O. Box 314, 6594 Nonummy Rd.","(636) 949-5683","odio.auctor@hotmail.org"),
  (93,"Emi","Phelps","Ap #780-3136 Erat. Avenue","1-475-721-3255","molestie.tortor@protonmail.com"),
  (94,"Molly","Greer","958-9247 Tempus Av.","(287) 611-7615","mollis@protonmail.edu"),
  (95,"Justin","Hull","Ap #942-7461 Faucibus St.","(959) 265-1275","a.purus@icloud.net"),
  (96,"Cody","Austin","P.O. Box 554, 3721 Adipiscing St.","1-985-795-8802","arcu.curabitur.ut@hotmail.edu"),
  (97,"Rowan","Rios","P.O. Box 895, 5792 Pharetra. Rd.","(874) 358-8234","et@google.org"),
  (98,"Yvonne","Mcdonald","P.O. Box 133, 4004 Elit. Rd.","1-868-494-4323","malesuada@yahoo.edu"),
  (99,"Hedwig","Petersen","581-2346 Consectetuer St.","1-495-599-5342","aliquet@google.net"),
  (100,"Daniel","Franks","Ap #321-5927 Commodo Ave","(816) 487-7247","eleifend.egestas@aol.edu");
  
  
  
  
 
INSERT INTO visit_type (`id`,`name`,`description`) VALUES (1,'OFFICE VISIT','We see pets primarily by scheduled appointments. In order to provide excellent pet and client care, we routinely allow as much or more time for office visits as any other veterinary practice. We strive to stay on-time, but emergencies and urgent pet problems make occasional delays unavoidable. ');
INSERT INTO visit_type (`id`,`name`,`description`) VALUES (2,'HOUSECALL','We do housecall appointments Monday through Friday, from the greater Portland to the greater Brunswick area.');
INSERT INTO visit_type (`id`,`name`,`description`) VALUES (3,'DROP-OFF','For the convenience of our clients drop-off appointments are available. You leave your pet with us for part of the day. Dropped-off pets are quickly evaluated when they arrive and, if their problem is urgent or an emergency, they promptly receive the necessary care. While they are in our hospital all pets are monitored and cared for carefully. We always do an exam, but we never do other diagnostic tests or treatments unless the client has approved them');
INSERT INTO visit_type (`id`,`name`,`description`) VALUES (4,'SURGICAL','Surgery usually requires general anesthesia. Most of our surgical procedures are scheduled in the morning; for these appointments we admit the pet to our hospital between 7:30 and 8:30 in the morning and discharge them between 3:00 and 5:45 in the afternoon. Occasionally we schedule a surgical procedure for the afternoon; these pets are dropped off by noon; sometimes they are awake and ready to go home the same day but most often they stay overnight and go home the next day.');
INSERT INTO visit_type (`id`,`name`,`description`) VALUES (5,'DENTAL','Pet dentistry requires general anesthesia. Most of our dental procedures are scheduled in the morning; for these appointments we admit the pet to our hospital between 7:30 and 8:30 in the morning and discharge them between 3:00 and 5:45 in the afternoon. Occasionally we schedule a dental procedure for the afternoon; these pets are dropped off by noon; sometimes they are awake and ready to go home the same day but most often they stay overnight and go home the next day.');
INSERT INTO visit_type (`id`,`name`,`description`) VALUES (6,'TECHNICIAN','Our technicians and assistants are very skilled at a wide variety of nursing and medical procedures, ranging from routine nail trims and emptying anal sacs to blood collection to laser therapy to administering injectable fluids and other medications. Thus, many appointments are scheduled with a technician at YVC.');
INSERT INTO visit_type (`id`,`name`,`description`) VALUES (7,'WALK-IN','We provide prompt care for emergencies. We do not routinely see walk-in appointments for less urgent problems, but we usually find a way to accommodate clients who arrive without an appointment. ');



INSERT INTO service_types (`id`,`name`,`price`) VALUES (1,'Physical examinations',20.4);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (2,'Lab testing and other diagnostic testing',70);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (3,'Vaccinations',30);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (4,'Parasite prevention',20);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (5,'Behavioral counseling',100);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (6,'Training and socialization',500);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (7,'Diet and nutrition',100);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (8,'Dental health and cleaning',150);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (9,'Neurology',300);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (10,'Oncology',500);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (11,'Critical Care',100);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (12,'Specialized surgeries',200);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (13,'Cardiology',70);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (14,'Internal Medicine',50);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (15,'Radiation',600);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (16,'Rehabilitation',1050);
INSERT INTO service_types (`id`,`name`,`price`) VALUES (17,'Behavioral Health',600);





INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (1,34,15),
  (2,40,3),
  (3,56,6),
  (4,5,10),
  (5,67,9),
  (6,22,5),
  (7,55,7),
  (8,7,15),
  (9,51,14),
  (10,5,13);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (11,41,10),
  (12,70,7),
  (13,62,3),
  (14,27,5),
  (15,12,9),
  (16,42,2),
  (17,3,13),
  (18,38,13),
  (19,64,13),
  (20,7,5);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (21,43,16),
  (22,65,9),
  (23,15,2),
  (24,45,15),
  (25,3,9),
  (26,67,2),
  (27,68,12),
  (28,48,9),
  (29,36,6),
  (30,47,15);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (31,60,8),
  (32,51,15),
  (33,65,12),
  (34,26,5),
  (35,22,1),
  (36,59,13),
  (37,54,16),
  (38,26,2),
  (39,64,15),
  (40,36,11);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (41,3,13),
  (42,58,6),
  (43,64,7),
  (44,63,11),
  (45,4,3),
  (46,6,7),
  (47,41,7),
  (48,59,11),
  (49,21,3),
  (50,64,13);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (51,21,3),
  (52,6,7),
  (53,48,14),
  (54,11,16),
  (55,52,3),
  (56,10,14),
  (57,28,14),
  (58,40,2),
  (59,53,15),
  (60,53,1);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (61,46,7),
  (62,57,7),
  (63,14,1),
  (64,39,14),
  (65,2,4),
  (66,15,17),
  (67,55,4),
  (68,33,11),
  (69,62,3),
  (70,28,5);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (71,30,2),
  (72,29,12),
  (73,64,8),
  (74,42,10),
  (75,34,7),
  (76,70,7),
  (77,66,6),
  (78,37,13),
  (79,11,3),
  (80,35,10);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (81,40,5),
  (82,64,16),
  (83,60,9),
  (84,47,6),
  (85,12,7),
  (86,41,2),
  (87,13,9),
  (88,69,12),
  (89,4,13),
  (90,40,11);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (91,30,15),
  (92,42,12),
  (93,19,10),
  (94,69,3),
  (95,12,9),
  (96,44,15),
  (97,65,10),
  (98,9,16),
  (99,64,14),
  (100,6,4);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (101,40,3),
  (102,33,15),
  (103,40,7),
  (104,5,9),
  (105,13,4),
  (106,41,4),
  (107,29,16),
  (108,66,14),
  (109,68,4),
  (110,31,14);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (111,28,11),
  (112,9,5),
  (113,29,17),
  (114,3,5),
  (115,46,14),
  (116,26,1),
  (117,31,4),
  (118,66,8),
  (119,46,5),
  (120,20,5);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (121,21,5),
  (122,31,13),
  (123,46,11),
  (124,38,4),
  (125,62,12),
  (126,58,17),
  (127,21,15),
  (128,8,11),
  (129,57,14),
  (130,55,4);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (131,26,13),
  (132,40,5),
  (133,39,14),
  (134,28,9),
  (135,3,9),
  (136,45,9),
  (137,30,17),
  (138,22,2),
  (139,52,12),
  (140,6,7);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (141,35,15),
  (142,28,12),
  (143,2,6),
  (144,70,2),
  (145,35,5),
  (146,50,10),
  (147,50,2),
  (148,23,2),
  (149,67,12),
  (150,29,6);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (151,57,16),
  (152,43,12),
  (153,59,5),
  (154,40,10),
  (155,66,12),
  (156,22,8),
  (157,37,9),
  (158,27,5),
  (159,34,8),
  (160,53,15);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (161,33,7),
  (162,25,15),
  (163,24,10),
  (164,63,13),
  (165,57,16),
  (166,64,4),
  (167,26,5),
  (168,56,16),
  (169,22,1),
  (170,47,13);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (171,29,6),
  (172,50,14),
  (173,62,3),
  (174,43,7),
  (175,58,3),
  (176,39,16),
  (177,56,6),
  (178,19,8),
  (179,25,14),
  (180,36,14);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (181,55,15),
  (182,22,13),
  (183,44,12),
  (184,58,15),
  (185,62,12),
  (186,29,14),
  (187,45,12),
  (188,52,10),
  (189,3,10),
  (190,7,9);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (191,69,10),
  (192,21,2),
  (193,10,10),
  (194,59,13),
  (195,22,5),
  (196,3,12),
  (197,65,10),
  (198,16,10),
  (199,41,10),
  (200,34,9);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (201,65,3),
  (202,16,2),
  (203,54,13),
  (204,46,16),
  (205,39,6),
  (206,19,9),
  (207,67,10),
  (208,33,9),
  (209,40,1),
  (210,29,2);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (211,52,5),
  (212,25,15),
  (213,17,6),
  (214,59,4),
  (215,43,6),
  (216,64,7),
  (217,37,15),
  (218,41,14),
  (219,35,2),
  (220,45,15);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (221,38,2),
  (222,35,6),
  (223,9,3),
  (224,4,16),
  (225,43,2),
  (226,19,14),
  (227,57,1),
  (228,12,6),
  (229,46,5),
  (230,9,3);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (231,20,1),
  (232,12,14),
  (233,28,4),
  (234,48,6),
  (235,35,14),
  (236,27,1),
  (237,28,2),
  (238,31,4),
  (239,47,9),
  (240,30,13);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (241,56,15),
  (242,24,14),
  (243,7,12),
  (244,58,9),
  (245,27,7),
  (246,24,2),
  (247,67,9),
  (248,48,10),
  (249,58,10),
  (250,54,16);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (251,9,10),
  (252,49,9),
  (253,45,11),
  (254,11,11),
  (255,50,6),
  (256,58,17),
  (257,30,7),
  (258,69,6),
  (259,67,10),
  (260,32,5);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (261,31,5),
  (262,30,8),
  (263,31,16),
  (264,68,2),
  (265,54,10),
  (266,12,5),
  (267,4,2),
  (268,18,16),
  (269,59,12),
  (270,19,8);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (271,1,11),
  (272,13,14),
  (273,59,6),
  (274,65,16),
  (275,33,14),
  (276,18,7),
  (277,68,9),
  (278,37,3),
  (279,68,14),
  (280,7,10);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (281,47,3),
  (282,58,6),
  (283,67,11),
  (284,47,10),
  (285,64,5),
  (286,69,3),
  (287,9,6),
  (288,68,11),
  (289,60,3),
  (290,63,2);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (291,50,12),
  (292,55,5),
  (293,30,2),
  (294,63,7),
  (295,54,9),
  (296,30,9),
  (297,30,12),
  (298,3,16),
  (299,25,11),
  (300,41,9);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (301,30,1),
  (302,9,11),
  (303,29,17),
  (304,45,2),
  (305,18,15),
  (306,69,5),
  (307,8,7),
  (308,20,16),
  (309,42,13),
  (310,31,5);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (311,28,17),
  (312,61,4),
  (313,22,15),
  (314,42,11),
  (315,4,5),
  (316,32,13),
  (317,24,9),
  (318,62,11),
  (319,31,11),
  (320,63,17);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (321,1,15),
  (322,44,6),
  (323,45,1),
  (324,64,15),
  (325,69,7),
  (326,55,5),
  (327,45,16),
  (328,27,6),
  (329,40,13),
  (330,20,11);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (331,26,7),
  (332,23,4),
  (333,27,2),
  (334,13,2),
  (335,34,9),
  (336,13,4),
  (337,18,14),
  (338,18,7),
  (339,54,2),
  (340,6,14);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (341,10,10),
  (342,57,4),
  (343,35,5),
  (344,58,12),
  (345,15,2),
  (346,2,4),
  (347,18,17),
  (348,6,14),
  (349,16,13),
  (350,46,8);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (351,50,4),
  (352,14,10),
  (353,60,4),
  (354,56,10),
  (355,49,4),
  (356,3,11),
  (357,32,3),
  (358,18,16),
  (359,52,10),
  (360,23,12);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (361,30,2),
  (362,31,4),
  (363,52,11),
  (364,33,13),
  (365,56,15),
  (366,17,8),
  (367,22,13),
  (368,3,4),
  (369,41,9),
  (370,52,5);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (371,13,4),
  (372,55,2),
  (373,16,14),
  (374,34,5),
  (375,17,16),
  (376,29,10),
  (377,35,15),
  (378,17,5),
  (379,49,14),
  (380,35,12);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (381,22,15),
  (382,31,10),
  (383,49,6),
  (384,46,13),
  (385,54,5),
  (386,13,2),
  (387,49,16),
  (388,36,12),
  (389,68,16),
  (390,45,11);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (391,69,15),
  (392,35,9),
  (393,1,1),
  (394,52,12),
  (395,36,13),
  (396,51,5),
  (397,58,5),
  (398,40,15),
  (399,37,5),
  (400,36,4);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (401,10,3),
  (402,60,3),
  (403,41,9),
  (404,14,7),
  (405,61,15),
  (406,40,4),
  (407,54,14),
  (408,60,5),
  (409,63,8),
  (410,23,6);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (411,51,13),
  (412,69,10),
  (413,68,3),
  (414,1,5),
  (415,22,11),
  (416,12,13),
  (417,50,3),
  (418,22,3),
  (419,40,14),
  (420,6,12);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (421,12,6),
  (422,59,8),
  (423,53,8),
  (424,41,15),
  (425,52,10),
  (426,65,3),
  (427,65,12),
  (428,12,16),
  (429,23,6),
  (430,64,5);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (431,66,7),
  (432,53,5),
  (433,25,10),
  (434,4,9),
  (435,42,6),
  (436,5,16),
  (437,10,4),
  (438,25,3),
  (439,58,10),
  (440,68,12);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (441,69,8),
  (442,4,5),
  (443,18,11),
  (444,6,1),
  (445,64,13),
  (446,26,14),
  (447,2,10),
  (448,54,17),
  (449,22,13),
  (450,31,13);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (451,30,10),
  (452,58,10),
  (453,66,9),
  (454,38,4),
  (455,25,5),
  (456,45,14),
  (457,54,12),
  (458,47,13),
  (459,17,15),
  (460,47,9);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (461,33,14),
  (462,20,11),
  (463,17,5),
  (464,11,5),
  (465,59,4),
  (466,42,15),
  (467,26,9),
  (468,43,5),
  (469,44,6),
  (470,61,6);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (471,1,12),
  (472,15,9),
  (473,70,9),
  (474,35,2),
  (475,21,17),
  (476,60,5),
  (477,23,6),
  (478,56,11),
  (479,29,9),
  (480,61,9);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (481,44,6),
  (482,38,4),
  (483,11,4),
  (484,21,16),
  (485,67,11),
  (486,34,7),
  (487,59,8),
  (488,28,2),
  (489,54,14),
  (490,41,6);
INSERT INTO `service` (`id`,`service_id`,`service_type`)
VALUES
  (491,17,12),
  (492,54,2),
  (493,40,12),
  (494,44,14),
  (495,36,8),
  (496,22,16),
  (497,52,7),
  (498,52,2),
  (499,32,16),
  (500,19,10);
  
  
  INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (1,'Abamectin',307);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (2,'Acetazolamide sodium',406);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (3,'Adenosine-5-monophosphate',383);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (4,'Aklomide',297);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (5,'Albendazole',304);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (6,'Alfaxalone',22);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (7,'Aloe vera',177);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (8,'Alphadolone Acetate',432);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (9,'Alpha-galactosidase',13);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (10,'Altrenogest',278);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (11,'Amikacin and its salts',370);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (12,'Aminopentamide',216);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (13,'Aminopyridine',168);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (14,'Amitraz',366);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (15,'Amoxicillin',286);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (16,'Amphomycin',278);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (17,'Amphotericin B',202);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (18,'Ampicillin',167);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (19,'Amprolium',292);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (20,'Anethole',488);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (21,'Apramycin',126);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (22,'Asiaticoside',320);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (23,'Atipamezole',389);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (24,'Avoparcin',402);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (25,'Azaperone',203);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (26,'Bambermycin',360);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (27,'Bemegride',360);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (28,'Benazepril',488);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (29,'Benzathine cloxacillin',276);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (30,'Benzoyl Peroxide',157);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (31,'Benzydamine',33);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (32,'Bephenium',344);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (33,'Bephenium Hydroxynaphthoate',303);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (34,'Betamethasone',480);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (35,'Boldenone undecylenate',469);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (36,'Boswellin',300);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (37,'Bromelain',196);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (38,'Bromhexine',405);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (39,'2-Bromo-2-nitropan-1, 3 diol',159);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (40,'Bunamidine',29);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (41,'Buquinolate',152);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (42,'Butamisole',21);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (43,'Butonate',40);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (44,'Butorphanol',164);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (45,'Calcium glucoheptonate (calcium glucoheptogluconate)',88);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (46,'Calcium levulinate',461);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (47,'Cambendazole',238);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (48,'Caprylic/Capric Acid Monoesters',293);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (49,'Carbadox',341);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (50,'Carbomycin',147);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (51,'Carfentanil',134);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (52,'Carnidazole',221);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (53,'Carnitine',64);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (54,'Carprofen',389);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (55,'Cefadroxil',352);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (56,'Ceftiofur sodium',447);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (57,'Centella asiatica',253);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (58,'Cephaloridine',497);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (59,'Cephapirin',321);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (60,'Chlorine dioxide',446);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (61,'Chlormadinone acetate',489);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (62,'Chlorophene',448);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (63,'Chlorothiazide',20);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (64,'Chlorpromazine HCl',83);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (65,'Choline Salicylate',394);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (66,'Chondroitin sulfate',353);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (67,'Clazuril',440);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (68,'Clenbuterol',281);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (69,'Clindamycin',379);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (70,'Clomipramine',7);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (71,'Clopidol',192);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (72,'Cloprostenol',444);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (73,'Clotrimazole',35);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (74,'Cloxacillin',130);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (75,'Colistin sulfate',478);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (76,'Copper calcium edetate',106);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (77,'Copper glycinate',41);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (78,'Coumaphos',148);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (79,'Cromolyn sodium',485);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (80,'Crystalline Hydroxycobalamin',302);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (81,'Cyclizine',147);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (82,'Cyclosporin A',314);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (83,'Cyprenorphine HCl',443);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (84,'Cythioate',291);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (85,'Decoquinate',189);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (86,'Demeclocycline (Demethylchlortetracycline)',366);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (87,'Deslorelin',320);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (88,'Desoxycorticosterone Pivalate',419);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (89,'Detomidine',197);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (90,'Diaveridine',59);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (91,'Dichlorvos',233);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (92,'Diclazuril',238);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (93,'Dicloxacillin',475);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (94,'Didecyl dimethyl ammonium chloride',406);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (95,'Diethanolamine',292);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (96,'Diethylcarbamazine',284);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (97,'Dihydrochlorothiazide',29);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (98,'Diidohydroxyquin',311);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (99,'Dimethylglycine',105);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (100,'Dimethylphthalate',401);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (101,'Dimethyl Sulfoxide',433);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (102,'Dimetridazole',409);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (103,'Diminazene Aceturate',188);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (104,'Dinitolmide (3,5-Dinitro-o-toluamide) (Zoalene)',458);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (105,'Dinoprost',163);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (106,'Dioctyl dimethyl ammonium chloride',425);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (107,'Dipenidam',3);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (108,'Diprenorphine',432);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (109,'Diprophylline',500);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (110,'Disophenol',160);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (111,'Dithiazanine iodide',205);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (112,'Diuredosan',459);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (113,'Doramectin',484);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (114,'Doxapram',385);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (115,'Doxepin',101);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (116,'Doxycycline',210);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (117,'Dyclonine',383);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (118,'Emamectin',337);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (119,'Enalapril',74);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (120,'Enflurane',277);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (121,'Enilconazole',390);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (122,'Enrofloxacin',359);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (123,'Enterococcus faecium culture',67);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (124,'Eprinomectin',132);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (125,'Eprofloxacin',183);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (126,'Epsiprantel',325);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (127,'Erythromycin (hydrochloride, thyocyanate, stearate)',366);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (128,'Estrone',202);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (129,'Etamiphylline',136);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (130,'Etorphine',430);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (131,'Famphur',159);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (132,'Febantel',184);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (133,'Fenbendazole',281);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (134,'Fenprostalene',245);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (135,'Fenthion',436);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (136,'Fentichlor',292);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (137,'Fertirelin',190);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (138,'Florfenicol',495);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (139,'Flumethasone',397);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (140,'Flunixin meglumine',423);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (141,'Fluocinolone',162);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (142,'Fluocinonide',497);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (143,'Fluoroprednisolone',51);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (144,'Fluprostenol',431);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (145,'Flurogestone',80);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (146,'Flutamide',431);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (147,'Formosulfathiazole',193);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (148,'Framycetin',128);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (149,'Furadantin',426);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (150,'Furaltadone',226);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (151,'Furazolium chloride',379);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (152,'Furosemide',46);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (153,'Fusidic acid',309);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (154,'Gentamicin',251);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (155,'Gleptoferron',406);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (156,'Glucosamine',8);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (157,'Glycarbylamide (1H-imidazole-4,5-dicarboxamide)',416);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (158,'Glycarsamide',261);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (159,'Glyceryl guaicolate',158);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (160,'Gonadorelin',185);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (161,'Griseofulvin',60);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (162,'Halofuginone',112);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (163,'Halothane',477);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (164,'Haloxon',471);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (165,'Hamamelis (witch hazel extract)',455);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (166,'Heptaminol',182);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (167,'Hetacillin',469);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (168,'Homidium',265);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (169,'Hyaluronic acid',18);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (170,'Hydriodic acid',145);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (171,'Hydrochlorothiazide',357);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (172,'Hydrocotyle (Centella)',102);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (173,'Hydroxymethylprogesterone acetate',371);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (174,'Hydroxyprogesterone acetate',322);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (175,'Hydroxyzine',166);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (176,'Hygromycin',461);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (177,'4-5 Imidazole dicarboxamide (1H-imidazole-4,5-dicarboxamide)',284);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (178,'Inosine',223);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (179,'Insulin',112);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (180,'Iodochlorhydroxyquin',95);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (181,'Iodoquinol (Diiodohydroxyquin)',73);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (182,'Ipronidazole hydrochloride',99);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (183,'Isoflupredone',157);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (184,'Isoflurane',279);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (185,'Isoxuprine',460);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (186,'Ivermectin',379);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (187,'Kanamycin',198);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (188,'Ketamine',25);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (189,'Ketoconazole',70);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (190,'Ketoprofen',238);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (191,'Lasalocid',327);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (192,'Lauricidin (Glycerol Monolaurate)',38);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (193,'Levamisole',121);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (194,'Levothyroxine sodium',240);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (195,'d-Limonene (orange peel oil)',27);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (196,'Lincomycin',488);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (197,'Linear Dodecyl Benzene Sulfonic Acid',481);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (198,'Liothyronine',38);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (199,'Loxapine',51);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (200,'Lufenuron',62);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (201,'Luprostiol',13);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (202,'Maduramicin',454);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (203,'Mannitol',55);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (204,'Mazipredone',213);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (205,'Mebendazole',165);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (206,'Meclofenamic Acid',478);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (207,'Medroxyprogesterone',337);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (208,'Megestrol',45);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (209,'Melatonin',436);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (210,'Melengestrol',204);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (211,'Meloxicam',282);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (212,'Mepivacaine',439);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (213,'Meprobamate',253);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (214,'2-Mercaptobenzothiazole',84);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (215,'Metallibure',295);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (216,'Methacide',145);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (217,'Methandriol (Methylandrostenediol)',406);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (218,'Methanol',55);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (219,'Methocarbamol',141);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (220,'Methoserpate',414);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (221,'Methoxyflurane',489);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (222,'Methylsulfonylmethane',79);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (223,'Methylpyriline',230);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (224,'Metomidate',25);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (225,'Metrifonate',304);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (226,'Metronidazole',467);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (227,'Mibolerone',403);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (228,'Miconazole nitrate',46);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (229,'Milbemycin',401);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (230,'Monensin',14);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (231,'Moxidectin',297);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (232,'Nafcillin',141);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (233,'Naladixic acid',349);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (234,'Naloxone',468);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (235,'Nandrolone',338);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (236,'Naphthalophos',324);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (237,'Narasin',442);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (238,'Neguvon',133);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (239,'Nequinate',262);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (240,'Nicarbazin',242);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (241,'Niclosamide',366);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (242,'Nifuraldezone',85);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (243,'Nifurpirinol',10);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (244,'Nifursol',283);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (245,'Nithiazide',400);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (246,'Nitroscanate',422);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (247,'Norethandrolone',70);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (248,'Noscapine',146);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (249,'Nosiheptide',422);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (250,'Novobiocin',263);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (251,'Octyl decyl dimethyl ammonium chloride',186);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (252,'Octyl Dimethyl para amino benzoic acid',391);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (253,'Octyl thiobenzoate',451);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (254,'Oleandomycin',363);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (255,'Orange peel oil (d-limonene)',9);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (256,'Orbifloxacin',484);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (257,'Orgotein',64);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (258,'Ormetoprim',118);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (259,'Oxantel',491);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (260,'Oxfendazole',366);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (261,'Oxibendazole',402);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (262,'Oxygen (medical gas)',60);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (263,'Paraformaldehyde',412);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (264,'Pentachlorophenol',254);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (265,'Pentapiperidine',473);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (266,'Pentazocine lactate',15);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (267,'Pentoxifylline',45);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (268,'Phencyclidine',61);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (269,'Pilocarpine',257);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (270,'Piperacetazine',43);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (271,'Piretanide',453);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (272,'Pirlimycin',106);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (273,'Poloxalene',16);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (274,'Poly (Iminoimidocarbonyliminoimidocarbonyliminohescamethylene)',67);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (275,'Hydrochloride',458);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (276,'Polymyxin methane sulfonate',180);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (277,'Polysulfate Glycosaminoglycan',400);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (278,'Potassium bromide',142);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (279,'Praziquantel',205);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (280,'Prednisolone Tebutate',449);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (281,'Prednisolone Trimethyl Acetate',276);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (282,'Pregelatinized Starch',285);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (283,'Primidone',170);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (284,'Propiomazine HCl',201);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (285,'Propionylpromazine',270);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (286,'Propiopromazine',500);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (287,'Propofol',296);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (288,'Propolis',72);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (289,'Prostalene',269);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (290,'Pyrantel',229);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (291,'Pyrimethamine',255);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (292,'Quinine Hydrochloride',19);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (293,'Quinine Sulfate',88);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (294,'Robenidine',360);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (295,'Rolitetracyline',56);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (296,'Romifidine',102);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (297,'Ronidazole',198);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (298,'Ronnel',144);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (299,'Ruelene',450);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (300,'Salinomycin Sodium',455);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (301,'Selegiline',246);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (302,'Semduramicin',452);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (303,'Shark Cartilage',249);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (304,'Sodium Acetazolamide',240);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (305,'Sodium alkylate sulfonate',192);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (306,'Sodium ceftiofur',185);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (307,'Sodium cephapirin',247);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (308,'Sodium Clavulate',369);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (309,'Sodium cloxacillin',170);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (310,'Sodium Cromoglycate',361);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (311,'Sodium Cromolyn',46);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (312,'Sodium dicloxacillin monohydrate',355);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (313,'Sodium dodecyl benzene sulfonate iodine complex',130);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (314,'Sodium Hyaluronate',454);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (315,'Sodium Lasalocid',71);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (316,'Sodium levothyroxine',283);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (317,'Sodium liothyronine',37);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (318,'Sodium novobiocin',443);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (319,'Sodium oleate',53);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (320,'Sodium pentosan polysulphate',136);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (321,'Sodium salinomycin',255);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (322,'Sodium selenite',204);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (323,'Sodium sulfabromomethazine',154);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (324,'Sodium sulfachloropyrazine monohydrate',9);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (325,'Sodium sulfaethoxypyridazine',366);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (326,'Sodium sulfobromomethazine',442);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (327,'Sodium thiosalicylate',334);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (328,'Spectinomycin',109);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (329,'Spiramycin',422);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (330,'Sputolysin',192);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (331,'Squalene',334);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (332,'Stanozolol',427);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (333,'Streptococcus thermophilus extract',165);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (334,'Styrylpyridinium',105);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (335,'Sulbactam',472);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (336,'Sulfachlorpyridazine',482);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (337,'Sulfadiazine',436);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (338,'Sulfadoxine',283);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (339,'Sulfaethoxypyridazine',178);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (340,'Sulfamethoxypyridazine',163);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (341,'2-Sulfanilamidoquinoxaline',362);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (342,'Teflubenzuron',205);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (343,'Testosterone cypionate',362);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (344,'Testosterone enanthate',387);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (345,'Tetrachlorvinphos',77);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (346,'1,1,2-tetrafluorothane',32);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (347,'Tetramisole',394);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (348,'Thiabendazole',64);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (349,'Thymus Nucleic Acid',469);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (350,'Thyroactive casein',17);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (351,'Thyroglobulin',27);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (352,'Tiamulin',207);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (353,'Tilmicosin',17);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (354,'Tolazoline',99);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (355,'Tolfenamic acid',170);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (356,'Tolnaftate',462);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (357,'Trenbolone acetate',462);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (358,'Triamcinolone',419);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (359,'Tricaine Methanesulfonate',414);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (360,'Trichloracetic acid',321);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (361,'Trichlorfon',466);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (362,'Trichlormethiazide',470);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (363,'Trichlorophenyl (phenol?)',172);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (364,'Triclosan',387);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (365,'Trienbolone',66);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (366,'Trifluomeprazine',394);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (367,'Triiodothyronine',194);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (368,'Trimeprazine tartrate',211);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (369,'Trimethoprim',20);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (370,'Trimethylalkylammonium stearate',105);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (371,'Tromethamine',85);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (372,'Tripelennamine',460);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (373,'Tylosin',185);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (374,'Vasopressine sp',360);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (375,'Vedaprofen',279);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (376,'Virginiamycin',499);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (377,'Witch hazel extract (Hamamelis extract)',288);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (378,'Xylazine',210);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (379,'Yohimbine',170);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (380,'Zeranol',372);
INSERT INTO drugs (`drug_id`,`name`,`unit_price`) VALUES (381,'Zoalene',399);

INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (1,56,209),
  (2,64,32),
  (3,35,185),
  (4,38,59),
  (5,30,375),
  (6,4,269),
  (7,67,239),
  (8,15,278),
  (9,64,369),
  (10,9,79);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (11,20,76),
  (12,55,220),
  (13,34,90),
  (14,4,165),
  (15,41,202),
  (16,22,159),
  (17,42,127),
  (18,26,280),
  (19,9,89),
  (20,20,213);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (21,19,241),
  (22,63,260),
  (23,8,63),
  (24,53,186),
  (25,32,321),
  (26,17,298),
  (27,48,148),
  (28,63,151),
  (29,49,1),
  (30,59,126);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (31,45,73),
  (32,20,265),
  (33,53,176),
  (34,41,195),
  (35,49,277),
  (36,42,191),
  (37,35,310),
  (38,66,299),
  (39,38,222),
  (40,26,162);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (41,41,167),
  (42,69,329),
  (43,46,151),
  (44,13,262),
  (45,30,21),
  (46,12,248),
  (47,61,212),
  (48,39,308),
  (49,15,33),
  (50,31,317);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (51,24,275),
  (52,32,364),
  (53,24,106),
  (54,56,38),
  (55,47,259),
  (56,39,362),
  (57,58,361),
  (58,61,313),
  (59,41,103),
  (60,54,181);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (61,15,343),
  (62,33,270),
  (63,4,216),
  (64,35,33),
  (65,49,132),
  (66,26,35),
  (67,52,219),
  (68,65,30),
  (69,43,235),
  (70,29,264);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (71,27,103),
  (72,17,267),
  (73,25,126),
  (74,18,255),
  (75,42,2),
  (76,64,270),
  (77,2,286),
  (78,66,57),
  (79,39,353),
  (80,24,258);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (81,3,234),
  (82,17,220),
  (83,10,158),
  (84,66,18),
  (85,34,158),
  (86,50,108),
  (87,41,25),
  (88,9,311),
  (89,20,119),
  (90,34,71);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (91,22,272),
  (92,44,185),
  (93,12,298),
  (94,5,255),
  (95,51,124),
  (96,66,229),
  (97,16,211),
  (98,35,340),
  (99,9,322),
  (100,22,87);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (101,61,251),
  (102,69,53),
  (103,61,353),
  (104,5,66),
  (105,39,32),
  (106,29,276),
  (107,40,281),
  (108,34,322),
  (109,21,149),
  (110,53,206);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (111,38,4),
  (112,27,83),
  (113,40,211),
  (114,34,189),
  (115,46,88),
  (116,55,193),
  (117,3,340),
  (118,22,160),
  (119,42,344),
  (120,58,193);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (121,59,164),
  (122,58,74),
  (123,15,278),
  (124,8,58),
  (125,66,167),
  (126,40,7),
  (127,24,347),
  (128,28,78),
  (129,54,344),
  (130,2,261);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (131,16,24),
  (132,50,222),
  (133,2,213),
  (134,55,228),
  (135,11,254),
  (136,24,160),
  (137,14,12),
  (138,31,229),
  (139,16,194),
  (140,20,178);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (141,27,188),
  (142,7,330),
  (143,28,286),
  (144,2,345),
  (145,46,299),
  (146,47,258),
  (147,18,237),
  (148,11,43),
  (149,20,112),
  (150,20,42);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (151,11,132),
  (152,22,237),
  (153,4,257),
  (154,68,152),
  (155,10,344),
  (156,35,198),
  (157,31,266),
  (158,49,375),
  (159,38,134),
  (160,16,253);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (161,25,104),
  (162,58,254),
  (163,32,261),
  (164,34,356),
  (165,10,134),
  (166,41,360),
  (167,2,33),
  (168,27,215),
  (169,29,255),
  (170,27,154);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (171,48,124),
  (172,2,42),
  (173,15,207),
  (174,4,145),
  (175,62,154),
  (176,34,65),
  (177,53,294),
  (178,32,241),
  (179,23,59),
  (180,55,353);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (181,69,321),
  (182,63,42),
  (183,38,356),
  (184,14,98),
  (185,2,246),
  (186,30,265),
  (187,46,239),
  (188,7,62),
  (189,44,98),
  (190,70,259);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (191,69,30),
  (192,51,9),
  (193,42,364),
  (194,66,363),
  (195,56,113),
  (196,43,224),
  (197,23,345),
  (198,43,255),
  (199,41,134),
  (200,33,381);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (201,31,83),
  (202,39,64),
  (203,17,135),
  (204,45,156),
  (205,49,234),
  (206,38,332),
  (207,34,275),
  (208,39,103),
  (209,33,203),
  (210,68,244);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (211,62,277),
  (212,50,273),
  (213,20,72),
  (214,14,163),
  (215,45,255),
  (216,47,148),
  (217,36,339),
  (218,57,34),
  (219,33,308),
  (220,37,130);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (221,18,42),
  (222,11,234),
  (223,12,149),
  (224,60,246),
  (225,37,139),
  (226,58,100),
  (227,45,101),
  (228,23,326),
  (229,11,371),
  (230,7,260);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (231,69,284),
  (232,66,264),
  (233,31,244),
  (234,8,351),
  (235,62,161),
  (236,60,149),
  (237,68,377),
  (238,42,54),
  (239,25,48),
  (240,28,18);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (241,8,315),
  (242,10,169),
  (243,61,229),
  (244,14,256),
  (245,49,371),
  (246,7,252),
  (247,4,18),
  (248,55,106),
  (249,61,65),
  (250,13,256);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (251,66,241),
  (252,1,310),
  (253,55,98),
  (254,35,50),
  (255,4,70),
  (256,61,34),
  (257,26,83),
  (258,23,164),
  (259,64,317),
  (260,47,314);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (261,45,219),
  (262,49,26),
  (263,20,378),
  (264,25,366),
  (265,23,57),
  (266,37,287),
  (267,50,129),
  (268,30,298),
  (269,69,69),
  (270,43,24);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (271,29,326),
  (272,23,323),
  (273,17,181),
  (274,47,182),
  (275,22,150),
  (276,44,274),
  (277,65,174),
  (278,50,69),
  (279,67,17),
  (280,36,261);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (281,39,41),
  (282,67,104),
  (283,21,271),
  (284,54,333),
  (285,58,152),
  (286,21,28),
  (287,24,338),
  (288,11,111),
  (289,2,292),
  (290,20,359);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (291,14,72),
  (292,8,366),
  (293,29,123),
  (294,3,377),
  (295,28,347),
  (296,22,285),
  (297,43,51),
  (298,10,169),
  (299,51,15),
  (300,13,298);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (301,45,144),
  (302,65,51),
  (303,59,230),
  (304,5,85),
  (305,42,378),
  (306,57,35),
  (307,57,373),
  (308,21,308),
  (309,14,299),
  (310,20,223);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (311,16,130),
  (312,39,176),
  (313,57,265),
  (314,53,220),
  (315,48,3),
  (316,31,336),
  (317,39,126),
  (318,23,240),
  (319,44,123),
  (320,60,108);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (321,5,368),
  (322,17,151),
  (323,33,16),
  (324,63,141),
  (325,2,370),
  (326,35,222),
  (327,66,151),
  (328,56,266),
  (329,30,375),
  (330,60,146);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (331,38,370),
  (332,57,192),
  (333,10,172),
  (334,38,142),
  (335,37,240),
  (336,15,217),
  (337,6,209),
  (338,12,79),
  (339,15,89),
  (340,67,233);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (341,48,36),
  (342,17,190),
  (343,42,246),
  (344,33,143),
  (345,22,228),
  (346,22,340),
  (347,42,109),
  (348,49,269),
  (349,49,114),
  (350,31,69);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (351,59,311),
  (352,46,319),
  (353,11,174),
  (354,31,149),
  (355,29,58),
  (356,40,262),
  (357,57,296),
  (358,46,308),
  (359,54,216),
  (360,15,120);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (361,34,225),
  (362,6,204),
  (363,66,209),
  (364,18,46),
  (365,24,317),
  (366,6,281),
  (367,30,69),
  (368,52,2),
  (369,44,340),
  (370,66,266);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (371,7,199),
  (372,6,66),
  (373,54,145),
  (374,47,73),
  (375,55,113),
  (376,21,165),
  (377,5,279),
  (378,57,348),
  (379,23,20),
  (380,67,353);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (381,66,368),
  (382,51,195),
  (383,29,271),
  (384,69,92),
  (385,19,101),
  (386,12,248),
  (387,29,103),
  (388,64,67),
  (389,57,176),
  (390,2,290);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (391,12,48),
  (392,17,253),
  (393,22,3),
  (394,41,302),
  (395,69,182),
  (396,24,379),
  (397,23,165),
  (398,33,181),
  (399,39,323),
  (400,9,290);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (401,63,343),
  (402,51,328),
  (403,9,241),
  (404,12,318),
  (405,65,322),
  (406,28,49),
  (407,29,293),
  (408,70,67),
  (409,39,355),
  (410,19,211);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (411,16,292),
  (412,17,380),
  (413,10,180),
  (414,3,14),
  (415,20,11),
  (416,35,376),
  (417,70,145),
  (418,61,95),
  (419,34,354),
  (420,18,72);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (421,70,95),
  (422,4,149),
  (423,14,157),
  (424,21,261),
  (425,63,6),
  (426,47,104),
  (427,41,198),
  (428,14,319),
  (429,68,141),
  (430,69,243);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (431,43,374),
  (432,63,236),
  (433,15,324),
  (434,65,239),
  (435,34,30),
  (436,14,90),
  (437,53,24),
  (438,11,73),
  (439,34,13),
  (440,39,282);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (441,59,55),
  (442,69,186),
  (443,47,279),
  (444,43,269),
  (445,12,237),
  (446,63,152),
  (447,54,51),
  (448,39,373),
  (449,64,206),
  (450,12,359);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (451,25,108),
  (452,13,30),
  (453,28,102),
  (454,16,135),
  (455,37,260),
  (456,44,71),
  (457,34,121),
  (458,21,287),
  (459,61,158),
  (460,41,105);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (461,64,272),
  (462,64,363),
  (463,19,308),
  (464,51,201),
  (465,8,191),
  (466,57,256),
  (467,70,70),
  (468,39,329),
  (469,22,260),
  (470,25,161);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (471,70,91),
  (472,51,215),
  (473,55,122),
  (474,25,309),
  (475,18,319),
  (476,19,371),
  (477,10,81),
  (478,66,264),
  (479,28,179),
  (480,16,195);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (481,34,306),
  (482,29,312),
  (483,57,72),
  (484,31,352),
  (485,54,324),
  (486,59,162),
  (487,61,316),
  (488,44,216),
  (489,55,365),
  (490,27,375);
INSERT INTO `prescription` (`id`,`prescription_id`,`drug_id`)
VALUES
  (491,21,302),
  (492,24,266),
  (493,51,354),
  (494,56,179),
  (495,15,211),
  (496,54,353),
  (497,58,168),
  (498,28,237),
  (499,62,187),
  (500,40,104);
  
  
  
  
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (1,588,3,8,"2021-04-10 00:07:09","Brittany",14,"Y"),
  (2,80,47,28,"2022-06-19 19:38:22","Omar",7,"N"),
  (3,294,4,54,"2023-09-20 05:08:35","Ima",76,"N"),
  (4,409,17,42,"2021-06-12 13:59:14","Kyle",60,"Y"),
  (5,417,43,8,"2022-08-05 03:13:11","Illiana",67,"N"),
  (6,32,74,18,"2024-02-16 21:43:53","Quamar",98,"N"),
  (7,67,53,47,"2022-07-30 20:48:27","Karly",85,"N"),
  (8,404,69,19,"2021-07-08 09:53:23","Ima",5,"N"),
  (9,141,40,5,"2022-09-09 05:14:02","Roth",76,"N"),
  (10,305,20,50,"2022-04-24 17:06:12","Neve",38,"Y");
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (11,295,89,27,"2023-04-17 20:03:58","Reed",81,"Y"),
  (12,200,7,51,"2021-11-24 21:13:49","Aline",29,"Y"),
  (13,170,75,35,"2022-05-24 13:25:25","Malik",68,"N"),
  (14,289,92,52,"2022-12-16 09:22:41","Jayme",37,"Y"),
  (15,266,17,27,"2022-08-30 21:34:41","Ishmael",5,"Y"),
  (16,280,13,10,"2021-11-05 13:11:13","Richard",97,"N"),
  (17,81,19,54,"2022-06-18 02:48:41","Bo",39,"N"),
  (18,544,40,24,"2022-01-07 16:58:56","Isaiah",66,"Y"),
  (19,294,49,27,"2023-11-24 20:38:11","Germane",65,"N"),
  (20,377,29,54,"2022-08-21 06:12:44","Lucius",36,"Y");
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (21,411,21,3,"2023-06-26 19:44:36","Adena",86,"Y"),
  (22,51,70,51,"2024-01-17 02:50:50","Roary",75,"Y"),
  (23,445,62,16,"2024-01-26 14:41:48","Marvin",30,"Y"),
  (24,251,2,26,"2022-07-13 13:26:23","Garrett",92,"Y"),
  (25,486,19,11,"2022-12-11 19:45:13","Norman",98,"N"),
  (26,483,80,31,"2022-11-10 07:28:14","Vanna",51,"N"),
  (27,478,84,48,"2023-10-14 23:49:50","Coby",34,"N"),
  (28,297,99,48,"2023-06-26 09:59:51","Renee",4,"Y"),
  (29,262,8,39,"2021-08-22 04:17:18","Darius",4,"Y"),
  (30,398,33,18,"2022-03-17 12:24:31","Jeremy",65,"Y");
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (31,279,7,48,"2023-02-21 04:57:14","Alan",11,"Y"),
  (32,287,58,16,"2021-08-13 08:13:10","Carter",46,"N"),
  (33,317,58,42,"2023-01-18 19:45:09","Kelsey",50,"Y"),
  (34,235,82,4,"2021-11-03 07:42:51","Vivien",61,"Y"),
  (35,529,33,42,"2023-10-12 15:28:34","Coby",29,"N"),
  (36,362,28,10,"2022-10-16 23:34:45","Jacob",32,"Y"),
  (37,65,1,7,"2022-11-26 00:52:49","Juliet",55,"N"),
  (38,451,45,34,"2021-04-09 07:34:34","Alexis",12,"N"),
  (39,500,3,1,"2023-04-21 02:02:16","Mary",39,"N"),
  (40,171,66,10,"2023-06-03 10:19:10","Nyssa",42,"Y");
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (41,184,15,17,"2022-11-02 11:18:54","Molly",57,"N"),
  (42,258,22,25,"2022-08-21 03:00:10","Frances",79,"Y"),
  (43,561,72,14,"2023-07-19 04:28:28","Genevieve",48,"N"),
  (44,136,46,23,"2023-03-21 18:46:10","Lester",28,"Y"),
  (45,45,91,42,"2021-07-17 16:18:05","Dustin",87,"N"),
  (46,506,76,17,"2022-10-20 07:50:49","Armando",34,"N"),
  (47,98,62,41,"2021-11-25 18:34:19","Hyacinth",32,"N"),
  (48,180,86,45,"2024-01-07 13:38:59","Aquila",36,"Y"),
  (49,165,51,19,"2023-08-19 01:31:47","Giacomo",9,"Y"),
  (50,522,26,3,"2021-12-20 13:42:14","Baxter",27,"N");
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (51,457,12,16,"2023-12-31 00:11:10","Rosalyn",71,"Y"),
  (52,274,46,46,"2022-11-26 17:51:06","Herman",90,"N"),
  (53,281,42,28,"2021-06-02 02:20:59","Tatum",11,"N"),
  (54,228,5,19,"2022-01-24 10:38:28","Paula",47,"N"),
  (55,168,60,51,"2022-11-02 18:24:11","Michael",52,"Y"),
  (56,541,57,48,"2022-09-28 04:14:46","Mari",10,"N"),
  (57,531,74,9,"2023-04-06 00:07:04","Garth",51,"N"),
  (58,571,74,10,"2023-06-27 00:54:02","Whoopi",99,"Y"),
  (59,517,19,48,"2024-02-29 03:28:33","Charlotte",14,"N"),
  (60,517,39,10,"2023-02-06 06:03:17","Rhonda",79,"Y");
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (61,93,84,22,"2023-05-15 16:27:23","Chase",74,"N"),
  (62,264,79,28,"2022-02-10 14:41:35","Dale",5,"N"),
  (63,88,10,4,"2021-05-08 02:56:58","Brody",39,"N"),
  (64,52,24,52,"2022-10-06 08:39:53","TaShya",96,"Y"),
  (65,312,78,5,"2024-02-14 09:56:07","Jessamine",79,"N"),
  (66,64,8,50,"2021-11-18 22:22:08","Rogan",74,"Y"),
  (67,74,3,23,"2021-08-05 21:26:47","Nasim",15,"Y"),
  (68,423,13,32,"2022-07-23 20:36:41","Serina",33,"Y"),
  (69,421,66,22,"2023-12-05 08:55:31","Hoyt",78,"N"),
  (70,143,13,33,"2022-01-05 17:22:13","Brianna",13,"Y");
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (71,285,34,35,"2022-09-06 12:32:51","Breanna",37,"Y"),
  (72,345,26,48,"2024-02-27 00:52:45","Yvonne",94,"N"),
  (73,370,49,55,"2023-04-16 14:38:02","Desirae",60,"Y"),
  (74,185,83,1,"2022-04-02 12:01:01","Xander",26,"N"),
  (75,169,8,2,"2022-03-31 11:44:30","Quemby",61,"Y"),
  (76,202,68,42,"2024-01-26 04:39:06","Stephen",88,"Y"),
  (77,311,29,40,"2022-02-11 22:13:27","Lael",73,"N"),
  (78,59,82,39,"2021-12-05 10:17:23","Linus",11,"Y"),
  (79,346,19,11,"2023-05-31 23:57:22","Tucker",34,"Y"),
  (80,49,82,24,"2021-10-17 02:40:24","Meghan",3,"Y");
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (81,129,63,10,"2022-10-13 04:16:18","Jason",40,"N"),
  (82,465,36,21,"2024-03-08 19:22:48","Dustin",84,"Y"),
  (83,266,16,49,"2023-02-21 02:28:02","Avram",79,"Y"),
  (84,230,69,21,"2023-07-04 11:51:48","Flynn",96,"N"),
  (85,587,6,17,"2024-01-20 21:07:08","Hilda",5,"N"),
  (86,532,34,2,"2023-01-19 20:39:41","Guy",70,"Y"),
  (87,536,24,11,"2023-10-24 19:43:59","Iona",44,"N"),
  (88,78,33,41,"2021-10-24 22:32:31","Abel",98,"Y"),
  (89,295,44,32,"2022-02-11 18:50:12","Quamar",46,"N"),
  (90,311,52,33,"2022-12-30 20:47:00","Simon",36,"Y");
INSERT INTO `vet_patients` (`id_patient`,`type`,`owner_id`,`main_food_id`,`registration_data`,`pet_name`,`pet_age`,`is_outdor`)
VALUES
  (91,474,56,52,"2024-01-19 16:25:57","Tara",94,"N"),
  (92,411,67,30,"2023-07-23 04:51:26","Lionel",4,"N"),
  (93,31,36,17,"2021-09-17 23:10:08","Adara",7,"Y"),
  (94,259,46,51,"2023-05-25 20:33:14","Lareina",81,"N"),
  (95,207,71,29,"2022-10-27 01:20:08","Tobias",91,"N"),
  (96,426,35,16,"2022-04-22 09:51:14","Bethany",55,"Y"),
  (97,426,57,28,"2021-08-26 12:30:51","Hayden",69,"Y"),
  (98,243,83,2,"2021-08-10 18:58:39","Leroy",69,"N"),
  (99,151,95,20,"2021-08-01 17:26:10","Maggy",22,"Y"),
  (100,491,17,38,"2021-11-04 03:32:30","Price",57,"Y");


INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (1,41,5,"risus. Morbi metus. Vivamus euismod",51,64),
  (2,68,5,"fringilla purus",23,49),
  (3,26,6,"ultrices sit amet, risus. Donec nibh enim, gravida sit",52,54),
  (4,97,4,"faucibus lectus, a sollicitudin",61,13),
  (5,21,5,"Quisque porttitor",3,46),
  (6,96,2,"auctor odio a purus. Duis elementum, dui quis accumsan",37,56),
  (7,77,6,"diam luctus lobortis. Class",63,17),
  (8,58,4,"luctus ut, pellentesque eget,",69,50),
  (9,83,7,"gravida molestie arcu. Sed eu nibh",66,67),
  (10,32,3,"metus. In nec orci. Donec nibh. Quisque nonummy",4,54);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (11,39,4,"aliquet. Phasellus",7,20),
  (12,12,1,"eget, ipsum. Donec sollicitudin adipiscing",51,53),
  (13,35,4,"nunc id enim. Curabitur",41,18),
  (14,68,5,"nec quam. Curabitur vel lectus. Cum sociis",57,39),
  (15,22,2,"natoque penatibus",8,62),
  (16,73,4,"augue scelerisque",19,42),
  (17,84,4,"nascetur ridiculus mus. Proin vel arcu",70,11),
  (18,10,1,"sapien. Cras dolor dolor, tempus non,",62,6),
  (19,43,7,"risus, at fringilla",38,69),
  (20,10,7,"lectus",30,43);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (21,9,5,"Duis sit amet diam",63,66),
  (22,53,7,"risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non",57,17),
  (23,84,7,"sagittis augue, eu tempor erat neque non quam.",17,55),
  (24,93,2,"pede. Praesent eu dui. Cum sociis natoque penatibus et",17,52),
  (25,74,2,"elit. Curabitur",9,29),
  (26,82,6,"et ipsum cursus vestibulum. Mauris magna.",39,69),
  (27,52,4,"massa. Suspendisse eleifend. Cras sed",40,64),
  (28,91,4,"eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla",16,16),
  (29,48,2,"sed, facilisis vitae, orci. Phasellus dapibus quam quis diam.",57,16),
  (30,98,5,"Donec egestas. Aliquam nec enim.",21,39);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (31,2,4,"Sed et libero. Proin mi.",36,58),
  (32,5,4,"mi, ac mattis",24,33),
  (33,35,3,"molestie arcu. Sed eu nibh vulputate mauris",35,28),
  (34,87,7,"pede. Cum",35,14),
  (35,84,5,"eleifend egestas. Sed",8,47),
  (36,98,6,"nec tellus. Nunc lectus pede, ultrices a,",63,34),
  (37,69,2,"vitae sodales nisi magna sed dui.",25,47),
  (38,18,6,"elit erat",24,24),
  (39,14,6,"molestie tellus. Aenean egestas",9,24),
  (40,83,6,"non leo. Vivamus nibh dolor, nonummy ac, feugiat non,",54,14);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (41,1,7,"In nec orci. Donec nibh.",5,67),
  (42,31,4,"vitae purus gravida sagittis. Duis gravida. Praesent eu nulla",68,69),
  (43,21,5,"Maecenas libero est, congue a, aliquet vel, vulputate",56,65),
  (44,79,3,"Quisque tincidunt pede ac",19,11),
  (45,17,6,"dui.",7,23),
  (46,42,4,"ipsum porta",68,17),
  (47,18,4,"per inceptos hymenaeos.",35,20),
  (48,61,5,"sit amet nulla.",57,47),
  (49,50,1,"lorem, sit amet ultricies",54,15),
  (50,56,3,"imperdiet ornare. In faucibus.",27,44);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (51,34,4,"nec, leo. Morbi neque tellus,",31,28),
  (52,59,5,"ligula. Aliquam",31,24),
  (53,47,5,"est ac mattis semper, dui lectus rutrum urna, nec luctus",69,1),
  (54,91,2,"mauris. Integer",57,51),
  (55,79,6,"libero dui",33,24),
  (56,53,6,"nonummy ipsum non arcu. Vivamus sit amet risus. Donec",69,4),
  (57,26,2,"dictum cursus. Nunc mauris elit, dictum eu, eleifend nec,",20,31),
  (58,5,2,"tincidunt orci quis lectus. Nullam",52,3),
  (59,15,4,"natoque penatibus et magnis dis parturient",11,41),
  (60,10,6,"malesuada fames ac turpis egestas. Fusce",5,27);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (61,62,3,"ornare. In",3,3),
  (62,28,6,"est, mollis non, cursus non, egestas a, dui. Cras pellentesque.",14,62),
  (63,30,4,"est ac facilisis facilisis,",62,6),
  (64,57,7,"nascetur ridiculus mus.",3,62),
  (65,73,6,"mauris. Suspendisse",4,6),
  (66,72,2,"Morbi vehicula. Pellentesque",49,48),
  (67,41,3,"Donec at",16,50),
  (68,69,3,"dapibus rutrum, justo.",49,66),
  (69,8,2,"Phasellus libero mauris,",61,32),
  (70,18,5,"Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet",26,67);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (71,21,6,"Nunc sollicitudin commodo ipsum. Suspendisse non leo.",36,30),
  (72,82,3,"mi felis, adipiscing fringilla, porttitor",34,56),
  (73,16,5,"dui lectus rutrum urna, nec luctus felis",55,25),
  (74,63,2,"consequat",61,59),
  (75,40,7,"Aliquam gravida mauris ut mi.",23,29),
  (76,22,2,"Aliquam auctor, velit eget laoreet posuere, enim nisl",8,18),
  (77,72,4,"urna. Vivamus molestie dapibus ligula.",43,10),
  (78,2,6,"nulla. In tincidunt congue turpis.",54,46),
  (79,21,3,"Etiam vestibulum massa rutrum magna. Cras convallis",57,48),
  (80,62,1,"Maecenas malesuada",15,24);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (81,42,5,"Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.",30,4),
  (82,36,4,"Aliquam nisl. Nulla",33,61),
  (83,44,5,"ante dictum mi,",15,50),
  (84,48,3,"Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat",24,64),
  (85,38,6,"accumsan sed, facilisis vitae, orci. Phasellus dapibus",10,44),
  (86,36,6,"orci quis lectus.",32,18),
  (87,7,1,"Duis dignissim tempor arcu. Vestibulum ut eros non",63,67),
  (88,98,6,"amet risus. Donec egestas.",32,70),
  (89,49,6,"venenatis a, magna. Lorem",18,69),
  (90,52,1,"orci lacus vestibulum lorem, sit amet ultricies sem magna nec",51,17);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (91,9,5,"enim. Nunc ut erat.",68,11),
  (92,56,2,"dictum eleifend, nunc risus varius orci, in consequat enim diam",56,46),
  (93,81,3,"a nunc. In at pede. Cras vulputate velit",59,48),
  (94,95,5,"varius et, euismod et,",12,18),
  (95,78,4,"orci. Phasellus",11,30),
  (96,88,3,"pede ac urna. Ut tincidunt vehicula risus. Nulla eget",37,45),
  (97,16,7,"mus. Donec",6,5),
  (98,3,6,"dui. Cras pellentesque. Sed dictum. Proin eget",51,10),
  (99,21,4,"neque. Nullam ut nisi a odio",49,15),
  (100,71,6,"ante. Maecenas",16,16);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (101,47,6,"erat eget",21,9),
  (102,9,5,"sit amet, consectetuer adipiscing",14,43),
  (103,50,1,"tortor at risus. Nunc ac sem ut dolor dapibus",50,44),
  (104,92,4,"hymenaeos. Mauris",51,4),
  (105,63,1,"et, commodo at, libero. Morbi",54,39),
  (106,80,2,"malesuada ut, sem.",7,52),
  (107,3,3,"neque non quam. Pellentesque",35,64),
  (108,2,5,"at, velit. Cras lorem lorem, luctus ut,",40,20),
  (109,88,5,"amet orci. Ut sagittis",8,12),
  (110,44,6,"et magnis dis parturient montes,",56,10);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (111,90,6,"nec urna et arcu imperdiet ullamcorper. Duis at",1,34),
  (112,8,2,"eu neque pellentesque massa lobortis",11,12),
  (113,50,6,"adipiscing",38,58),
  (114,67,6,"Maecenas mi felis, adipiscing fringilla,",33,1),
  (115,38,4,"gravida sit amet, dapibus id, blandit",43,30),
  (116,26,6,"dui quis accumsan convallis,",68,43),
  (117,67,5,"placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,",46,37),
  (118,99,1,"eleifend, nunc risus varius orci, in",33,27),
  (119,62,2,"Aenean gravida nunc sed pede. Cum sociis natoque penatibus",8,11),
  (120,48,2,"justo faucibus lectus,",6,52);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (121,60,6,"natoque penatibus et magnis dis parturient montes, nascetur",28,41),
  (122,58,4,"Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed",35,58),
  (123,36,4,"vulputate,",63,32),
  (124,50,2,"enim nisl elementum purus, accumsan interdum libero dui",69,52),
  (125,56,5,"cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum",43,50),
  (126,81,2,"ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec,",16,42),
  (127,63,2,"In condimentum. Donec at arcu.",44,9),
  (128,57,1,"ridiculus mus.",39,38),
  (129,26,5,"faucibus leo, in",3,70),
  (130,23,4,"erat. Sed",45,30);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (131,24,3,"molestie orci tincidunt adipiscing. Mauris",59,35),
  (132,38,2,"sit amet ultricies sem magna nec quam. Curabitur vel lectus.",27,5),
  (133,40,7,"Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu",4,33),
  (134,21,5,"turpis nec mauris blandit mattis. Cras eget nisi dictum",23,54),
  (135,21,5,"eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing",25,49),
  (136,77,4,"vestibulum nec, euismod in, dolor. Fusce feugiat.",49,51),
  (137,92,2,"Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,",15,35),
  (138,49,2,"nunc nulla vulputate dui, nec tempus mauris erat eget",47,64),
  (139,46,3,"volutpat. Nulla dignissim. Maecenas ornare egestas",64,8),
  (140,38,5,"ultrices,",17,33);
INSERT INTO `visits` (`visit_id`,`vet_patient_id`,`visit_type_id`,`coments`,`prescription_id`,`service_id`)
VALUES
  (141,44,3,"Fusce mollis. Duis sit amet",69,63),
  (142,70,3,"blandit viverra. Donec tempus, lorem",47,55),
  (143,25,5,"erat",51,17),
  (144,99,3,"fames ac turpis egestas.",67,15),
  (145,9,3,"metus. Vivamus euismod urna. Nullam lobortis quam",25,53),
  (146,75,5,"in faucibus orci luctus",30,58),
  (147,53,6,"Phasellus dolor elit, pellentesque a,",13,49),
  (148,63,4,"Donec tempor, est ac mattis",66,56),
  (149,44,7,"risus. Donec",66,25),
  (150,51,6,"amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing",51,28);
  
  create view all_data_vet_patients as
(select 
vet_patients.id_patient, 
animal_type.type_name, 
owner.owner_first_name,
owner.owner_last_name,
owner.owner_phone_number,
food.main_food,
vet_patients.registration_data,
vet_patients.pet_name,
vet_patients.pet_age,
vet_patients.is_outdor
 from vet_patients
join animal_type on vet_patients.type = animal_type.id
join owner on vet_patients.owner_id = owner.owner_id
join food on vet_patients.main_food_id = food.food_id);

create view owners_and_their_pets as
select o.owner_id, o.owner_first_name, o. owner_last_name, o.owner_address, o.owner_phone_number,o.owner_email, vp.registration_data, vp.pet_name, vp.pet_age from owner o
left join vet_patients vp on vp.owner_id = o.owner_id
order by owner_id
;
describe vet_patients;

select * from all_data_vet_patients;