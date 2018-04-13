Campaign.destroy_all
Institution.destroy_all
Cpoint.destroy_all

puts "Seeding 4 institutions..."
institution1 = Institution.create(name: 'Hosp. Albert Einstein', address: 'Rua Fradique Coutinho, 915, São Paulo', email_resp: 'einstein@email.com.br', name_resp: 'João', phone_number_resp: '9999-9999')
institution2 = Institution.create(name: 'Hosp. São Luiz', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 2', phone_number_resp: '9999-9999')
institution3 = Institution.create(name: 'Hosp. Santa Joana', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 3', phone_number_resp: '9999-9999')
institution4 = Institution.create(name: 'Prefeitura SP', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 4', phone_number_resp: '9999-9999')

puts "Seeding 1 cpoint..."
cpoint1 = Cpoint.create(address: 'Rua Mourato Coelho, 1404', latitude: -23.555991, longitude: -46.6924928)

puts "Seeding 1 campaign..."
campaign1 = Campaign.create(start_date: (Date.today + 5), end_date: (Date.today + 10), location: 'Beco do Batman', cpoint_id: 1, institution_id: 1);


puts "Finished!"
