require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "lets a signed up" do
    visit "/"
    click_on "Cadastro"
    assert_equal new_user_registration_path, page.current_path

    fill_in "Email", with: "mlessa@gmail.com"
    fill_in "First name", with: "Marcos"
    fill_in "Last name", with: "Scorzoni"
    find('#user_address').set("Rua Mourato Coelho - Pinheiros, São Paulo - State of São Paulo, Brazil")
    fill_in "Phone number", with: "99999999"
    select('A+', :from => 'Blood type')
    fill_in("Password", with: '123456', :match => :prefer_exact)
    fill_in("Password confirmation", with: '123456', :match => :prefer_exact)
 
    click_on "Enviar"
    find('#user_address').set("Rua Mourato Coelho - Pinheiros, São Paulo - State of São Paulo, Brazil")
    fill_in("Password", with: '123456', :match => :prefer_exact)
    fill_in("Password confirmation", with: '123456', :match => :prefer_exact)
    click_on "Enviar"
    # save_and_open_screenshot

    # Should be redirected to Home with new product
    assert_equal root_path, page.current_path
  end
end
