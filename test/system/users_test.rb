require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "lets a signed up" do
    visit "/"
    click_on "Cadastro"
    assert_equal new_user_registration_path, page.current_path
    fill_in "E-mail", with: "mlessa@gmail.com"
    fill_in "Nome", with: "Marcos"
    fill_in "Sobrenome", with: "Scorzoni"
    fill_in "Endereço", with: "Rua Mourato Coelho - Pinheiros, São Paulo - State of São Paulo, Brazil"
    save_and_open_screenshot
    
    page.execute_script("document.getElementById('user_address').keydown()")
    page.execute_script("document.getElementById('user_address').return()")
    save_and_open_screenshot
    fill_in "Telefone", with: "99999999"
    select('A+', :from => 'Tipo sanguíneo')
    fill_in("Senha", with: '123456', :match => :prefer_exact)
    fill_in("Confirmação de senha", with: '123456', :match => :prefer_exact)
    click_on "Enviar"
    # fill_in "Endereço", with: "Rua Mourato Coelho - Pinheiros, São Paulo - State of São Paulo, Brazil"
    # fill_in("Senha", with: '123456', :match => :prefer_exact)
    # fill_in("Confirmação de senha", with: '123456', :match => :prefer_exact)
    # click_on "Enviar"
    # fill_in "Endereço", with: "Rua Mourato Coelho - Pinheiros, São Paulo - State of São Paulo, Brazil"
    # fill_in("Senha", with: '123456', :match => :prefer_exact)
    # fill_in("Confirmação de senha", with: '123456', :match => :prefer_exact)

    save_and_open_screenshot

    # Should be redirected to Home with new product
    
   assert_equal root_path, page.current_path
  end
end
