require 'test_helper'

class CampaignCreatorTest < ActiveSupport::TestCase
  setup do
    @beco_do_batman = Cpoint.create(address: 'R. Gonçalo Afonso - Jardim das Bandeiras, São Paulo - SP, Brazil')
    @sta_cruz_metro = Cpoint.create(address: 'Rua domingos de morais, 2564, vila mariana')
    google_campus = Cpoint.create(address: 'rua Coronel Oscar porto, 70 - Paraiso / SP')
    institution1 = Institution.create(name: 'Hosp. Albert Einstein', address: 'Rua Fradique Coutinho, 915, São Paulo', email_resp: 'einstein@email.com.br', name_resp: 'João', phone_number_resp: '9999-9999')
    @cesar = User.create(email: 'email@gmail.com', first_name: 'César', last_name: 'Fuster', address: 'Rua Mourato Coelho, 1404, São Paulo', phone_number: '9999-9999', blood_type: 'A+', available_monday: 'manhã', password: '123456', password_confirmation: '123456')
    @jose = User.create(email: 'mlasdasd@gmail.com', first_name: 'José', last_name: 'Gaspar', address: 'R. Fradique Coutinho, 1340, São Paulo', phone_number: '9999-9999', blood_type: 'O+', available_monday: 'tarde', password: '123456', password_confirmation: '123456')
  end

  test "3 cpoints exist" do
    assert_equal 3, Cpoint.count
  end

  test "at least 1 institution" do
    assert_equal 1, Institution.count 
  end

  test "create 2 users" do
    assert_equal 2, User.count 
  end

  test "All users are near to beco_do_batman" do
    assert_equal 2, User.near(@beco_do_batman.address, 2).length
  end


  test "User created, not near beco_do_batman and campaign limit not reached" do
    assert_equal 0, Campaign.count
    marcos = User.create(email: 'marcos@gmail.com', first_name: 'Marcos', last_name: 'Gonçalves', address: 'R. Mario Amaral, 50, São Paulo', phone_number: '9999-9999', blood_type: 'A-', available_sunday: 'manhã', password: '123456', password_confirmation: '123456') 
    campaign_limit = 4
    CampaignCreator.perform(@beco_do_batman, campaign_limit)
    assert_equal 0, Campaign.count
  end

  test "User created, near beco_do_batman and campaign limit not reached" do
    assert_equal 0, Campaign.count
    marcos = User.create(email: 'marcos@gmail.com', first_name: 'Marcos', last_name: 'Gonçalves', address: 'Rua Mourato Coelho, 1403, São Paulo', phone_number: '9999-9999', blood_type: 'A-', available_sunday: 'manhã', password: '123456', password_confirmation: '123456') 
    campaign_limit = 4
    CampaignCreator.perform(@beco_do_batman, campaign_limit)
    assert_equal 0, Campaign.count
  end

  test "User created, not near beco_do_batman and campaign limit reached" do
    assert_equal 0, Campaign.count
    marcos = User.create(email: 'marcos@gmail.com', first_name: 'Marcos', last_name: 'Gonçalves', address: 'R. Mario Amaral, 50, São Paulo', phone_number: '9999-9999', blood_type: 'A-', available_sunday: 'manhã', password: '123456', password_confirmation: '123456') 
    campaign_limit = 3
    CampaignCreator.perform(@beco_do_batman, campaign_limit)
    assert_equal 0, Campaign.count
  end

  test "User created,near beco_do_batman and campaign limit reached" do
    assert_equal 0, Campaign.count
    marcos = User.create(email: 'marcos@gmail.com', first_name: 'Marcos', last_name: 'Gonçalves', address: 'Rua Mourato Coelho, 1403, São Paulo', phone_number: '9999-9999', blood_type: 'A-', available_sunday: 'manhã', password: '123456', password_confirmation: '123456') 
    campaign_limit = 3
    CampaignCreator.perform(@beco_do_batman, campaign_limit)
    assert_equal 1, Campaign.count
    assert_equal @beco_do_batman, Campaign.last.cpoint
  end

  test "User created,near beco_do_batman and campaign already exist cannot create another campaign" do
    Campaign.destroy_all
    @beco_do_batman.campaigns.create!(
      start_date: (Time.zone.now - 10),
      end_date: (Time.zone.now + 100),
      location: @beco_do_batman.address
    )
    assert_equal 1, Campaign.count
    marcos = User.create(email: 'lalala@gmail.com', first_name: 'Samuel', last_name: 'Xavier', address: 'Rua Mourato Coelho, 1402, São Paulo', phone_number: '9999-9999', blood_type: 'A-', available_sunday: 'manhã', password: '123456', password_confirmation: '123456') 
    campaign_limit = 3
    CampaignCreator.perform(@beco_do_batman, campaign_limit)
    assert_equal 1, Campaign.count
  end

  test "User created, near beco_do_batman and campaign exist not with cpoint beco_do_batman can create another campaign" do
    Campaign.destroy_all
    @sta_cruz_metro.campaigns.create!(
      start_date: (Time.zone.now - 10),
      end_date: (Time.zone.now + 100),
      location: @sta_cruz_metro.address
    )
    assert_equal 1, Campaign.count
    marcos = User.create(email: 'lalala@gmail.com', first_name: 'Samuel', last_name: 'Xavier', address: 'Rua Mourato Coelho, 1402, São Paulo', phone_number: '9999-9999', blood_type: 'A-', available_sunday: 'manhã', password: '123456', password_confirmation: '123456') 
    campaign_limit = 3
    CampaignCreator.perform(@beco_do_batman, campaign_limit)
    assert_equal 2, Campaign.count
  end

  test "User created, near beco_do_batman and campaign exist not with cpoint beco_do_batman can create another campaign with users defined" do
    Campaign.destroy_all
    @sta_cruz_metro.campaigns.create!(
      start_date: (Time.zone.now - 10),
      end_date: (Time.zone.now + 100),
      location: @sta_cruz_metro.address
    )
    assert_equal 1, Campaign.count
    marcos = User.create(email: 'lalala@gmail.com', first_name: 'Samuel', last_name: 'Xavier', address: 'Rua Mourato Coelho, 1402, São Paulo', phone_number: '9999-9999', blood_type: 'A-', available_sunday: 'manhã', password: '123456', password_confirmation: '123456') 
    campaign_limit = 3
    CampaignCreator.perform(@beco_do_batman, campaign_limit)
    assert_equal 2, Campaign.count
    assert_equal 3, Campaign.last.users.count
    # assert_equal [marcos, @cesar, @jose].sort, Campaign.last.users.sort
  end
end
