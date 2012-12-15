# -*- coding: utf-8 -*-
puts "Inserting static data into database..."
ActiveRecord::Base.connection.execute("
insert into deals(id,name,description,price,offers,longitude,latitude,address,created_at,updated_at,gmaps,image,city,state,country,street,user_id,company) values ('8','€88 for a Luxury Overnight Stay for 2 at The Gresham, Dublin with Cream Tea, Breakfast & Late Check Out (value up to €176)',' Fancy a luxurious night away in Dublin city center? Pay just €88 for a night for 2 at The Gresham, Upper O Connell Street. It is  a deal valued at €176 and includes a delicious cream tea plus late check out. Spoil a loved one this Christmas with an elegant night away.Great location for Christmas shopping.Book within seven days to get the best possible choice of dates.','88£','50 % Discount','-6.260294999999999','53.3516597','23 Upper OConnell Street , Dublin 1 , Dublin , Ireland','2012-12-15 05:29:19.635650','2012-12-15 07:43:11.196893','t','ib4dlk.jpg','Dublin 1','Dublin','Ireland','23 Upper O Connell Street','5','The Gresham Hotel');
insert into deals(id,name,description,price,offers,longitude,latitude,address,created_at,updated_at,gmaps,image,city,state,country,street,user_id,company) values ('9','€149 for 1-Night Premium Escape for 2 in the 4-Star Maryborough Hotel & Spa, incl. Bottle of Prosecco, Chocolate-Dipped Strawberries, Breakfast & 4-Course Dinner (value up to €300) ',' Give in to the allure of opulence and luxury with today''s premium escape.€149 for an overnight stay for two at the Maryborough Hotel and Spa.Includes a four-course evening meal in the award-winning Bellini''s Restaurant.Hearty full-Irish breakfast.A bottle of Prosecco and chocolate-dipped strawberries.The perfect Christmas gift for a loved one who deserves something truly special.','149£','50 % Discount','-8.420560499999999','51.8719683','Maryborough Hill,Douglas,Cork,Ireland','2012-12-15 05:38:28.474439','2012-12-15 05:38:28.474439','t','iexplklk.png','Douglas','Cork','Ireland','Maryborough Hill','5','Maryborough Hotel & Spa.');
insert into deals(id,name,description,price,offers,longitude,latitude,address,created_at,updated_at,gmaps,image,city,state,country,street,user_id,company) values('10','Escape to Ennis: €99 for a 2-Night Stay incl. Breakfast & Dinner on 1 Evening at The Auburn Lodge Hotel & Leisure Centre, Clare (value up to €198) ','Head out west and do some exploring in rugged Co. Clare Grab a two-night stay with breakfast each morning and a two course dinner on one of the nights for two at Auburn Lodge, Ennis for €99.Enjoy breakfast each morning and  the luxury of the indoor swimming pool.You''ll even be treated to a two course meal for two on one of the nights.Perfect Christmas gift for someone special','99£','40 % Discount','-9.3369781','53.4281783','Galway Road,Ennis,Co. Clare,Galway,Ireland,','2012-12-15 05:46:11.491860','2012-12-15 09:58:28.950987','t','i436lk.jpg','Dublin2','Dublin','Ireland',' 36 Dame Street','3','Auburn Lodge Hotel - Ennis');
insert into deals(id,name,description,price,offers,longitude,latitude,address,created_at,updated_at,gmaps,image,city,state,country,user_id,company) values('11','Couple''s Escape to Kells: 1 Night (€89) or 2 Nights (€119), incl. Breakfast, Evening Meal & Bottle of Bubbly at the Headfort Arms Hotel (value up to €300) ','Break away from the stress of city life with a trip to Kells, Co. Meath Pay €89 for one-night stay for two in the Headfort Arms Hotel, including breakfast, evening meal and a bottle of bubbly.Or, pay €119 and stay two nights.Gold Medal Award-winning hotel Contemporary, nationally-acclaimed Vanilla Pod restaurant. Valid seven days a week.','119£','50% Discount','-6.2611329','53.35254','3 cavendish row,Dublin 1,Dublin,Ireland,','2012-12-15 05:51:58.616234','2012-12-15 05:51:58.616234','t','ixp7alk.jpg','Dublin1','Dublin','Ireland','4','Headfort Arms Hotel');
insert into profiles(id,first_name,last_name,headline,designation,created_at,updated_at,user_id) values ('6','Kishore','Daadi','Software Engineer at Yalamanchili Software Exports Ltd','Software Engineer at Yalamanchili Software Exports Ltd','2012-12-15 06:33:20.848984','2012-12-15 06:34:09.352356','3');
insert into profiles(id,first_name,last_name,headline,designation,created_at,updated_at,user_id) values ('7','Praveen Kumar','Pyda','Seeking role of Graduate Software Engineer','Seeking role of Graduate Software Engineer','2012-12-15 07:09:56.667531','2012-12-15 07:09:56.667531','5');
insert into soldouts(id,customer_name,customer_email,card_number,expiry_date_year,expiry_date_month,cvv,created_at,updated_at) values ('12','Venkata Kishore','kishore@gmail.com','1432678545871462','12','8','123','2012-12-15 06:09:37.706376','2012-12-15 06:09:37.706376');
insert into soldouts(id,customer_name,customer_email,card_number,expiry_date_year,expiry_date_month,cvv,created_at,updated_at) values ('13','kishore','dvkisho@gmail.com','54235457453242353','3','3','234','2012-12-15 06:11:33.287140','2012-12-15 06:11:33.287140');
insert into soldouts(id,customer_name,customer_email,card_number,expiry_date_year,expiry_date_month,cvv,created_at,updated_at) values ('14','NCI','kishoreravi@gmail.com','3434749023723','12','8','487','2012-12-15 09:49:13.709718','2012-12-15 09:49:13.709718');
insert into users(id,email,encrypted_password,sign_in_count,current_sign_in_at,last_sign_in_at,created_at,updated_at,admin) values ('3','dvkisho@gmail.com','$2a$10$gxJk2vTXB52m/GtVtcBiZ.kszYgaQkliYnrLqinoQ3Q/Lergq1sV2','13','2012-12-15 09:53:37.771510','2012-12-15 07:42:45.453541','2012-12-07 04:38:02.096102','2012-12-15 09:53:37.774765','1');
insert into users(id,email,encrypted_password,sign_in_count,current_sign_in_at,last_sign_in_at,current_sign_in_ip,last_sign_in_ip,created_at,updated_at) values ('4','pawanpawan48@gmail.com','$2a$10$eIJkZ1aF1CzZQEIHM1tItu1YShISsVyJPnFIGviPoilmsgOtpS27K','8','2012-12-15 09:59:53.826462','2012-12-15 07:15:03.715822','127.0.0.1','127.0.0.1','2012-12-07 04:57:31.051696','2012-12-07 04:56:30.361828');
insert into users(id,email,encrypted_password,sign_in_count,current_sign_in_at,last_sign_in_at,current_sign_in_ip,last_sign_in_ip,created_at,updated_at) values ('5','kishore@gmil.com','$2a$10$sX84F13VYkSLA3a.Dni5s.Rpc6RGl6QQddHeO549EFBvJZsBL07CW','11','2012-12-15 10:00:21.862877','2012-12-15 09:53:11.534792','127.0.0.1','127.0.0.1','2012-12-07 05:03:54.933026','2012-12-15 10:00:21.867312');");

puts "Insertion done"











 





