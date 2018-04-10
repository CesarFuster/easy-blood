puts "Seeding 4 institutions..."
Campaign.destroy_all
Institution.destroy_all

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

puts "Finished!"