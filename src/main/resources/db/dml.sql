INSERT INTO ROLES VALUES(DEFAULT,'ADMINISTRADOR');
INSERT INTO ROLES VALUES(DEFAULT,'CLIENTE');
INSERT INTO ROLES VALUES(DEFAULT,'DUEÑO');


INSERT INTO PERSONAS VALUES(DEFAULT, 'Juan','Perez','38383838','juan@hotmail.com',0,'Crisologo Larralde 2020','20383838386');
INSERT INTO PERSONAS VALUES(DEFAULT, 'Maria','Teresa','12121212','mariateresa@gmail.com',1,'Av. San Juan 150', NULL);
INSERT INTO PERSONAS VALUES(DEFAULT, 'FEDE','MARTINEZ','4184858','guti.nas@gmail.com',1,'Supisiche 1500', NULL);
INSERT INTO PERSONAS VALUES(DEFAULT, 'Natalia','Fernandez','2683849','nati.nati@noreply.com',0,'Crisologo Larralde 2020', NULL);
INSERT INTO PERSONAS VALUES(DEFAULT, 'Nicolas','Fernandez','3483859','admin@nightapp.com',1,'Av. Cordero 6690', NULL);


INSERT INTO USUARIOS VALUES(DEFAULT, 'owner', MD5('owner'),1);
INSERT INTO USUARIOS VALUES(DEFAULT, 'mariateresa', MD5('teresa99'),2);
INSERT INTO USUARIOS VALUES(DEFAULT, 'fede', MD5('fede'),3);
INSERT INTO USUARIOS VALUES(DEFAULT, 'natifernandez', MD5('nati'),4);
INSERT INTO USUARIOS VALUES(DEFAULT, 'admin', MD5('admin'),5);


INSERT INTO USUARIOS_ROLES VALUES(1,1);
INSERT INTO USUARIOS_ROLES VALUES(1,2);
INSERT INTO USUARIOS_ROLES VALUES(2,2);
INSERT INTO USUARIOS_ROLES VALUES(3,2);
INSERT INTO USUARIOS_ROLES VALUES(4,2);
INSERT INTO USUARIOS_ROLES VALUES(5,1);
INSERT INTO USUARIOS_ROLES VALUES(5,2);
INSERT INTO USUARIOS_ROLES VALUES(5,3);


INSERT INTO LOCALIDADES VALUES(DEFAULT, 'Quilmes');
INSERT INTO LOCALIDADES VALUES(DEFAULT, 'Avellaneda');
INSERT INTO LOCALIDADES VALUES(DEFAULT, 'Lanus');


INSERT INTO CIUDADES VALUES(DEFAULT, 'Bernal' ,1);
INSERT INTO CIUDADES VALUES(DEFAULT, 'Don Bosco' ,1);
INSERT INTO CIUDADES VALUES(DEFAULT, 'Wilde' ,2);
INSERT INTO CIUDADES VALUES(DEFAULT, 'Sarandi' ,2);
INSERT INTO CIUDADES VALUES(DEFAULT, 'Avellaneda' ,2);
INSERT INTO CIUDADES VALUES(DEFAULT, 'Quilmes' ,1);
INSERT INTO CIUDADES VALUES(DEFAULT, 'Lanus' ,3);
INSERT INTO CIUDADES VALUES(DEFAULT, 'Gerli' ,3);


-- FALTA ACTUALIZAR LONGITUD Y LATITUD
INSERT INTO UBICACIONES VALUES(DEFAULT,'Gral. Güemes 567',5, -34.672983,-58.3620329);
INSERT INTO UBICACIONES VALUES(DEFAULT,'9 de Julio 11',1, -34.672983,-58.3620329);
INSERT INTO UBICACIONES VALUES(DEFAULT,'Av. Bartolomé Mitre 6235',3, -34.672983,-58.3620329);


INSERT INTO ESTABLECIMIENTOS VALUES(DEFAULT,'Parrilla El Tano', 'El Tano es una parrilla con tenedor libre ubicada en Avellaneda que hace culto de la informalidad y la comida abundante. Tiene un ambiente familiar, con mesas largas y las paredes decoradas con camisetas de fútbol.',1,1,5);
INSERT INTO ESTABLECIMIENTOS VALUES(DEFAULT,'La Roca', 'El mejor bar-boliche de todo Buenos Aires. Pasate esta noche, te va a encantar!',2,1,3);

--- FALTA ACTUALIZAR UBICACIONES/CREARLAS
INSERT INTO ESTABLECIMIENTOS VALUES(DEFAULT,'Antares', 'Más de 80 apasionados por la cerveza artesanal que se esmeran día a día para hacer las cervezas más ricas, mejorar la calidad, ser innovadores, creativos y brindarle a nuestros clientes más de lo que esperan.',3,1,4);
INSERT INTO ESTABLECIMIENTOS VALUES (DEFAULT, 'Baires Sushi Club', 'Un estiloso y entretenido lugar donde encontrarás ricos tragos y una tentadora oferta de sushi para disfrutar un momento relajado y entretenido.Ubicados en el bohemio Barrio Brasil de Santiago Centro encontrarás un sitio con un ambiente vanguardista',1,1,3);
INSERT INTO ESTABLECIMIENTOS VALUES (DEFAULT, 'La Birra Bar', 'Desde 2001 sirviendo comida casera y las mejores hamburguesas. Prestando especial atención al servicio y poniendo dedicación en la preparación del café.',2,1,5);



INSERT INTO COMENTARIOS VALUES(DEFAULT, 1,5, 'El mejor lugar para un viernes a la noche', 'La verdad una locura. Nada mejor que este lugar, totalmente recomendable. +100');
INSERT INTO COMENTARIOS VALUES(DEFAULT, 2,4, 'Gran lugar', 'Buen lugar para ir con amigos');
INSERT INTO COMENTARIOS VALUES(DEFAULT, 1,4, 'Me gusto', 'Bien');
INSERT INTO COMENTARIOS VALUES(DEFAULT, 2,4, 'Mejor que McDonalds', 'Si vas una vez no volves nunca mas a McDonalds');
INSERT INTO COMENTARIOS VALUES(DEFAULT, 3,3, 'OKOK', 'OKOK BIEN SESESESE');
INSERT INTO COMENTARIOS VALUES(DEFAULT, 1,5, 'Lugarrrr unicooooo', 'Re va.. una LOCURAAAAAA');
INSERT INTO COMENTARIOS VALUES(DEFAULT, 1,2, 'No volveria', 'Tardaron y el ambiente deja bastante que desear. La hamburguesa fria, aunque era rica');
INSERT INTO COMENTARIOS VALUES(DEFAULT, 1,5, 'El mejor lugar para un paty', 'La verdad una locura. Nada mejor que este lugar, totalmente recomendable. +100');
INSERT INTO COMENTARIOS VALUES(DEFAULT, 1,5, 'Gran lugar', 'Buen lugar para ir con amigos');
INSERT INTO COMENTARIOS VALUES(DEFAULT, 3,1, 'El barman un maleducado', 'No volveria');


INSERT INTO MENUS VALUES (DEFAULT, 'Vegano');
INSERT INTO MENUS VALUES (DEFAULT, 'Vegetariano');
INSERT INTO MENUS VALUES (DEFAULT, 'Celiaco');
INSERT INTO MENUS VALUES (DEFAULT, 'Comida japonesa');
INSERT INTO MENUS VALUES (DEFAULT, 'Comida internacional');
INSERT INTO MENUS VALUES (DEFAULT, 'Hambuerguesa');
INSERT INTO MENUS VALUES (DEFAULT, 'Pizza');
INSERT INTO MENUS VALUES (DEFAULT, 'Pasta');
INSERT INTO MENUS VALUES (DEFAULT, 'Parrilla');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Tenedor libre');


INSERT INTO SERVICIOS VALUES(DEFAULT, 'Wifi');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Television');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Sector fumador');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Pool');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Happy Hour');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Jenga');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Juegos de mesa');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Guardarropa');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Aire acondicionado');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Cerveza artesanal');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Entrada gratis');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Estacionamiento');
INSERT INTO SERVICIOS VALUES(DEFAULT, 'Show');


INSERT INTO CATEGORIAS VALUES(DEFAULT,'Bar');
INSERT INTO CATEGORIAS VALUES(DEFAULT,'Boliche');
INSERT INTO CATEGORIAS VALUES(DEFAULT,'Restaurant');


INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(1,2);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(1,6);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(1,7);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(1,8);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(1,9);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(2,6);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(2,7);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(3,1);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(3,2);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(3,3);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(3,4);
INSERT INTO ESTABLECIMIENTOS_MENUS VALUES(3,5);


INSERT INTO ESTABLECIMIENTOS_CATEGORIAS VALUES(1,3);
INSERT INTO ESTABLECIMIENTOS_CATEGORIAS VALUES(2,1);
INSERT INTO ESTABLECIMIENTOS_CATEGORIAS VALUES(2,2);
INSERT INTO ESTABLECIMIENTOS_CATEGORIAS VALUES(3,1);


INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(1,1);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(1,2);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(1,9);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(2,3);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(2,5);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(2,6);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(2,8);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,1);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,2);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,3);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,4);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,5);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,6);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,7);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,8);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,9);
INSERT INTO ESTABLECIMIENTOS_SERVICIOS VALUES(3,10);

