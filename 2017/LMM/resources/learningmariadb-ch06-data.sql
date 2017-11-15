INSERT INTO bird_orders (scientific_name, brief_description)
VALUES('Anseriformes', "Waterfowl"),
('Galliformes', "Fowl"),
('Charadriiformes', "Gulls, Button Quails, Plovers"),
('Gaviiformes', "Loons"),
('Podicipediformes', "Grebes"),
('Procellariiformes', "Albatrosses, Petrels"),
('Sphenisciformes', "Penguins"),
('Pelecaniformes', "Pelicans"),
('Phaethontiformes', "Tropicbirds"),
('Ciconiiformes', "Storks"),
('Cathartiformes', "New-World Vultures"),
('Phoenicopteriformes', "Flamingos"),
('Falconiformes', "Falcons, Eagles, Hawks"),
('Gruiformes', "Cranes"),
('Pteroclidiformes', "Sandgrouse"),
('Columbiformes', "Doves and Pigeons"),
('Psittaciformes', "Parrots"),
('Cuculiformes', "Cuckoos and Turacos"),
('Opisthocomiformes', "Hoatzin"),
('Strigiformes', "Owls"),
('Struthioniformes', "Ostriches, Emus, Kiwis"),
('Tinamiformes', "Tinamous"),
('Caprimulgiformes', "Nightjars"),
('Apodiformes', "Swifts and Hummingbirds"),
('Coraciiformes', "Kingfishers"),
('Piciformes', "Woodpeckers"),
('Trogoniformes', "Trogons"),
('Coliiformes', "Mousebirds"),
('Passeriformes', "Passerines");

INSERT INTO bird_families
VALUES(100, 'Gaviidae', "Loons or divers are aquatic birds found mainly in the Northern Hemisphere.",103);

INSERT INTO bird_families(scientific_name, order_id, brief_description)
VALUES('Anatidae', 103, "This family includes ducks, geese and swans.");

INSERT INTO bird_families
(scientific_name, order_id)
VALUES('Charadriidae', 109),
('Laridae', 102),
('Sternidae', 102),
('Caprimulgidae', 122),
('Sittidae', 128),
('Picidae', 125),
('Accipitridae', 112),
('Tyrannidae', 128),
('Formicariidae', 128),
('Laniidae', 128);

INSERT INTO birds
(common_name, scientific_name, family_id)
VALUES('Mountain Plover', 'Charadrius montanus', 103);

INSERT INTO birds
(common_name, scientific_name, family_id)
VALUES('Snowy Plover', 'Charadrius alexandrinus', 103),
('Black-bellied Plover', 'Pluvialis squatarola', 103),
('Pacific Golden Plover', 'Pluvialis fulva', 103);
