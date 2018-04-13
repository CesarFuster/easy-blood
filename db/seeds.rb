Campaign.destroy_all
Institution.destroy_all
User.destroy_all
Cpoint.destroy_all

puts "Seeding 4 institutions..."
institution1 = Institution.create(name: 'Hosp. Albert Einstein', address: 'Rua Fradique Coutinho, 915, São Paulo', email_resp: 'einstein@email.com.br', name_resp: 'João', phone_number_resp: '9999-9999')
institution2 = Institution.create(name: 'Hosp. São Luiz', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 2', phone_number_resp: '9999-9999')
institution3 = Institution.create(name: 'Hosp. Santa Joana', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 3', phone_number_resp: '9999-9999')
institution4 = Institution.create(name: 'Prefeitura SP', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 4', phone_number_resp: '9999-9999')


puts "Seeding 25 campaigns..."

# campaign1 = Campaign.create(start_date: (Date.today + 5), end_date: (Date.today + 10), location: 'Beco do Batman', institution_id: 1);
# campaign2 = Campaign.create(start_date: Date.today, end_date: (Date.today + 20), location: 'Av Paulista', institution_id: 1);
# campaign3 = Campaign.create(start_date: (Date.today + 1), end_date: (Date.today + 5), location: 'Lewgon', institution_id: 2);
# campaign4 = Campaign.create(start_date: (Date.today + 10), end_date: (Date.today + 15), location: 'Google', institution_id: 3);
# campaign5 = Campaign.create(start_date: Date.today, end_date: (Date.today + 5), location: 'Beco do Batman', institution_id: 4);
# campaign6 = Campaign.create(start_date: Date.today, end_date: (Date.today + 8), location: 'Beco', institution_id: 2);
# campaign7 = Campaign.create(start_date: (Date.today + 5), end_date: (Date.today + 10), location: 'Beco do Batman', institution_id: 1);
# campaign8 = Campaign.create(start_date: Date.today, end_date: (Date.today + 20), location: 'Av Paulista', institution_id: 1);
# campaign9 = Campaign.create(start_date: (Date.today + 1), end_date: (Date.today + 5), location: 'Lewgon', institution_id: 2);
# campaign10 = Campaign.create(start_date: (Date.today + 10), end_date: (Date.today + 15), location: 'Google', institution_id: 3);
# campaign11 = Campaign.create(start_date: Date.today, end_date: (Date.today + 5), location: 'Beco do Batman', institution_id: 4);
# campaign12 = Campaign.create(start_date: Date.today, end_date: (Date.today + 8), location: 'Beco', institution_id: 2);
# campaign13 = Campaign.create(start_date: (Date.today + 5), end_date: (Date.today + 10), location: 'Beco do Batman', institution_id: 1);
# campaign14 = Campaign.create(start_date: Date.today, end_date: (Date.today + 20), location: 'Av Paulista', institution_id: 1);
# campaign15 = Campaign.create(start_date: (Date.today + 1), end_date: (Date.today + 5), location: 'Lewgon', institution_id: 2);
# campaign16 = Campaign.create(start_date: (Date.today + 10), end_date: (Date.today + 15), location: 'Google', institution_id: 3);
# campaign17 = Campaign.create(start_date: Date.today, end_date: (Date.today + 5), location: 'Beco do Batman', institution_id: 4);
# campaign18 = Campaign.create(start_date: Date.today, end_date: (Date.today + 8), location: 'Beco', institution_id: 2);
# campaign19 = Campaign.create(start_date: (Date.today + 5), end_date: (Date.today + 10), location: 'Beco do Batman', institution_id: 1);
# campaign20 = Campaign.create(start_date: Date.today, end_date: (Date.today + 20), location: 'Av Paulista', institution_id: 1);
# campaign21 = Campaign.create(start_date: (Date.today + 1), end_date: (Date.today + 5), location: 'Lewgon', institution_id: 2);
# campaign22 = Campaign.create(start_date: (Date.today + 10), end_date: (Date.today + 15), location: 'Google', institution_id: 3);
# campaign23 = Campaign.create(start_date: Date.today, end_date: (Date.today + 5), location: 'Beco do Batman', institution_id: 4);
# campaign24 = Campaign.create(start_date: Date.today, end_date: (Date.today + 8), location: 'Beco', institution_id: 2);
# campaign25 = Campaign.create(start_date: Date.today, end_date: (Date.today + 8), location: 'Beco', institution_id: 2);

puts "cpoint"

cpoint = Cpoint.create(address: 'rua mourato coelho, 1404 - Sao Paulo')

puts "Seeding 5 users..."

user1 = User.create(email: 'mlessa@gmail.com', first_name: 'César', last_name: 'Fuster', address: 'Rua Mourato Coelho, 1500, São Paulo', phone_number: '9999-9999', blood_type: 'A+', available_monday: 'manhã', password: '123456', password_confirmation: '123456')

# user2 = User.create(email: 'email2@email.com', first_name: 'João', last_name: 'nonononon', address: 'Rua Mourato Coelho, 1404, São Paulo', phone_number: '9999-9999', blood_type: 'O+', available_monday: 'tarde', password: '123456', password_confirmation: '123456')
# user3 = User.create(email: 'email3@email.com', first_name: 'Maria', last_name: 'nonon', address: 'Avenida Paulista, 2073, São Paulo', phone_number: '9999-9999', blood_type: 'O+', available_friday: 'tarde', password: '123456', password_confirmation: '123456')
# user4 = User.create(email: 'email4@email.com', first_name: 'Roberto', last_name: 'nonono', address: 'Rua Cardeal Arcoverde, 2450, São Paulo', phone_number: '9999-9999', blood_type: 'AB+', available_tuesday: 'tarde', password: '123456', password_confirmation: '123456')
# user5 = User.create(email: 'email5@email.com', first_name: 'Marcelo', last_name: 'nonono', address: 'Avenida Angélica, 400, São Paulo', phone_number: '9999-9999', blood_type: 'B+', available_wednesday: 'tarde', password: '123456', password_confirmation: '123456')

puts "Finished!"
