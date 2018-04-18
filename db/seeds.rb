
Campaign.destroy_all
Institution.destroy_all
User.destroy_all
Cpoint.destroy_all

puts "Seeding 4 institutions..."
institution1 = Institution.create(name: 'Hosp. Albert Einstein', address: 'Rua Fradique Coutinho, 915, São Paulo', email_resp: 'einstein@email.com.br', name_resp: 'João', phone_number_resp: '9999-9999')
institution2 = Institution.create(name: 'Hosp. São Luiz', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 2', phone_number_resp: '9999-9999')
institution3 = Institution.create(name: 'Hosp. Santa Joana', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 3', phone_number_resp: '9999-9999')
institution4 = Institution.create(name: 'Prefeitura SP', address: 'Av. Paulista, 900', email_resp: 'einstein@email.com.br', name_resp: 'João 4', phone_number_resp: '9999-9999')

puts "Seeding 3 cpoints..."
beco_do_batman = Cpoint.create(address: 'R. Gonçalo Afonso - Vila Madalena')
sta_cruz_metro = Cpoint.create(address: 'Rua domingos de morais, 2564, vila mariana')
google_campus = Cpoint.create(address: 'rua Coronel Oscar porto, 70 - Paraiso / SP')


puts "Seeding 2 users - beco do batman..."
cesar = User.create(email: 'email@gmail.com', first_name: 'César', last_name: 'Fuster', address: 'Rua Mourato Coelho, 1404, São Paulo', phone_number: '9999-9999', blood_type: 'A+', available_monday: 'manhã', password: '123456', password_confirmation: '123456')
jose = User.create(email: 'mlasdasd@gmail.com', first_name: 'José', last_name: 'Gaspar', address: 'R. Fradique Coutinho, 1340, São Paulo', phone_number: '9999-9999', blood_type: 'O+', available_monday: 'tarde', password: '123456', password_confirmation: '123456')


puts "Seeding 2 users - metrô sta cruz..."
joao = User.create(email: 'joao@gmail.com', first_name: 'João', last_name: 'Silva', address: 'R. Domingos de Morais, 2437, São Paulo', phone_number: '9999-9999', blood_type: 'AB+', available_friday: 'manhã', password: '123456', password_confirmation: '123456')
maria = User.create(email: 'm@gmail.com', first_name: 'maria', last_name: 'Gaspar', address: 'R. Domingos de Morais, 2550, São Paulo', phone_number: '9999-9999', blood_type: 'O+', available_monday: 'tarde', password: '123456', password_confirmation: '123456')

puts "Seeding 1 user - google campus..."
marcos = User.create(email: 'marcos@gmail.com', first_name: 'Marcos', last_name: 'Gonçalves', address: 'R. Mario Amaral, 50, São Paulo', phone_number: '9999-9999', blood_type: 'A-', available_sunday: 'manhã', password: '123456', password_confirmation: '123456')
#USER PRA DEMO GOOGLE CAMPUS
roberto = User.create(email: 'easybloodteam@gmail.com', first_name: 'Roberto', last_name: 'Le Wagon', address: 'Rua Coronel Oscar Porto, 33, São Paulo', phone_number: '9999-9999', blood_type: 'A+', available_sunday: 'manhã', password: '123456', password_confirmation: '123456')

puts "Finished!"
