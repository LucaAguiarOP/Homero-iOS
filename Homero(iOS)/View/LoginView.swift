//
//  LoginView.swift
//  Homero(iOS)
//
//  Created by userext on 30/05/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var senha: String = ""
    @State private var isLoading: Bool = false
    @State private var loginSuccess: Bool = false
    
    
    @StateObject var loginmode = LoginViewModel()
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center,spacing: 5){
                Image("Homero")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 207)
                    .padding(.top,100)
                VStack(spacing: 5){
                    Text("Efetue Login:")
                        .position(x:100,y:70)
                    
                    Stylefield(text: $email, isSecured: true)
                    ZStack(alignment: .trailing){
                        
                        Stylefield(text: $senha, isSecured: false)
                        
                        
                        Image(systemName: self.loginmode.isSecuredEye ? "eye.slash" : "eye").position(x:320,y:47)
                        
                            .onTapGesture {
                                loginmode.performToggle()
                            }
                    }
                    
                    
                }
                NavigationLink(destination: ForgotPasswordVie()){
                    Text("Esqueceu a senha?")
                }
                Button(action: {
                    loginmode.authenticate()
                }) {
                    Text("Entrar")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color("Bluedark"))
                        .cornerRadius(10)
                }
                .padding(.top, 20)
                .disabled(isLoading)
                
                if isLoading {
                    ProgressView()
                        .padding(.top, 10)
                }
                
                if loginSuccess {
                    Text("Login bem-sucedido!")
                        .foregroundColor(.green)
                        .padding(.top, 10)
                }
                HStack{
                    Text("Não é matriculado? registre-se como")
                        .frame(width: 37,height: 37)
                    
                    NavigationLink(destination: TelaCadastro()){
                        Text("Aluno")
                            .frame(width: 37,height: 37)
                    }
                    Text("ou")
                        .frame(width: 37,height: 37)
                    NavigationLink(destination: TelaCadastro()){
                        Text("Professor")
                            .frame(width: 37,height: 37)
                    }
                }
            }
        }
        //douglasboiola
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    
    
}
