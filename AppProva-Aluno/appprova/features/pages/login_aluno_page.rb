class Aluno < SitePrism::Page

    set_url '/users/sign_in'
    element :novoUsuario, 'a[href="/users/sign_up"]'
    element :userName, '#user_name'
    element :userMail, '#user_email'
    element :userPw, '#user_password'
    element :pwConfirm, '#user_password_confirmation'
    element :cadastrar, 'input[type="submit"]'
    element :email, '#user_email'
    element :senha, '#user_password'
    element :logar, 'input[type="submit"]' 
    element :perfil, 'a[href="/users/edit"]' 
    element :dadosEscolares, 'a[href="/users/edit_enrollment_data/initial"]' 
    element :estado, '.select.optional.profile.profile-choose-state.required'
    element :selectEstado, 'option[value="11"]'
    element :cidade, '.select.optional.profile.profile-choose-city.required'
    element :selectCidade, 'option[value="2686"]'
    element :escola, 'a[class="select2-choice"]'
    element :nomeEscola, '.select2-input'
    element :selectEscola, :xpath, "//div[@id='select2-result-label-2']"
    element :escolaridade, 'select[id=user_enrollment_attributes_grade_id] > option:nth-last-child(9)'
    element :salva, 'input[value="Salvar dados"]'
    element :simulados, 'a[href="/mocks"]'
    element :iniciar, '#btn_start_mock'
    element :logOut, 'a[href="/users/destroy_session"]'
    element :verificador, '#recommendation-submit'


    def criarAcc

        novoUsuario.click
        userName.set 'Tes08'
        userMail.set '08@gmail.com'
        userPw.set '0123456'
        pwConfirm.set '0123456'
        cadastrar.click
    
    end

    def logIn

        email.set '08@gmail.com'
        senha.set '0123456'
        logar.click

    end

    def editarPerfil

        perfil.click
        dadosEscolares.click
        estado.click
        selectEstado.click
        cidade.click
        selectCidade.click
        escola.click
        nomeEscola.set 'AppProva Ensino Fundamental'
        selectEscola.click
        escolaridade.hover.click
        salva.click

    end

    def simulado

        simulados.click

    end

    def sair

        logOut.click

    end

end
