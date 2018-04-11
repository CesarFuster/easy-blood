Campaign.destroy_all
Institution.destroy_all
User.destroy_all

puts "Seeding 4 institutions..."

institution1 = Institution.create(name: 'Einstein', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João', phone_number_resp: '9999-9999')
institution2 = Institution.create(name: 'Einstein 2', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 2', phone_number_resp: '9999-9999')
institution3 = Institution.create(name: 'Einstein 3', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 3', phone_number_resp: '9999-9999')
institution4 = Institution.create(name: 'Einstein 4', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 4', phone_number_resp: '9999-9999')

puts "Seeding 5 campaigns..."

campaign1 = Campaign.create(start_date: (Date.today + 5), end_date: (Date.today + 10), location: 'Beco do Batman', institution_id: 1);
campaign2 = Campaign.create(start_date: Date.today, end_date: (Date.today + 20), location: 'Av Paulista', institution_id: 1);
campaign3 = Campaign.create(start_date: (Date.today + 1), end_date: (Date.today + 5), location: 'Lewgon', institution_id: 2);
campaign4 = Campaign.create(start_date: (Date.today + 10), end_date: (Date.today + 15), location: 'Google', institution_id: 3);
campaign5 = Campaign.create(start_date: Date.today, end_date: (Date.today + 5), location: 'Beco do Batman', institution_id: 4);
campaign6 = Campaign.create(start_date: Date.today, end_date: (Date.today + 8), location: 'Beco', institution_id: 2);


puts "Seeding 5 users..."

user1 = User.create(email: 'email1@email.com', first_name: 'César', last_name: 'Fuster', address: 'Rua Nanuque, 115, São Paulo', phone_number: '9999-9999', blood_type: 'A+', password: '123456', password_confirmation: '123456')
user2 = User.create(email: 'email2@email.com', first_name: 'João', last_name: 'nonononon', address: 'Rua Mourato Coelho, 1404, São Paulo', phone_number: '9999-9999', blood_type: 'O+', password: '123456', password_confirmation: '123456')
user3 = User.create(email: 'email3@email.com', first_name: 'Maria', last_name: 'nonon', address: 'Avenida Paulista, 2073, São Paulo', phone_number: '9999-9999', blood_type: 'O+', password: '123456', password_confirmation: '123456')
user4 = User.create(email: 'email4@email.com', first_name: 'Roberto', last_name: 'nonono', address: 'Rua Cardeal Arcoverde, 2450, São Paulo', phone_number: '9999-9999', blood_type: 'AB+', password: '123456', password_confirmation: '123456')
user5 = User.create(email: 'email5@email.com', first_name: 'Marcelo', last_name: 'nonono', address: 'Avenida Angélica, 400, São Paulo', phone_number: '9999-9999', blood_type: 'B+', password: '123456', password_confirmation: '123456')

puts "Finished!"
