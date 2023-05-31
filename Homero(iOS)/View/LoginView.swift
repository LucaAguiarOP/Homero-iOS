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
        VStack {
            Image("Homero")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            TextField("E-mail", text: $email)
                .padding()
//                .clipShape(RoundedRectangle(cornerSize: 16))
                .padding(.horizontal, 50)
                .keyboardType(.emailAddress)
                
            
            SecureField("Senha", text: $senha)
                .padding()
                .border(Color.gray, width: 1)
                .padding(.horizontal, 50)
            
            Button(action: {
                loginmode.authenticate()
            }) {
                Text("Entrar")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
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
        }
    }
    
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    
}
