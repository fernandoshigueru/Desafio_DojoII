class LoginPage < SitePrism::Page

    set_url "https://demo.suiteondemand.com"

    element :username_field, "#user_name"
    element :password_field, "#username_password"
    element :button_login, "#bigbutton"

    def efetuar_login
        username_field.set $dados['user_admin']['user']
        password_field.set $dados['user_admin']['password']
        button_login.click
    end

end