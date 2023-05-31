import SwiftUI

struct ContentView: View {
    
    @State private var nome: String = ""
    @State private var email: String = ""
    @State private var senha: String = ""

    
    var body: some View {
        VStack {
             
        Image("Homero")
            
            TextField("Nome", text: $nome)
                .padding()
                .border(Color.gray, width: 1)
                .padding(.horizontal, 50)
            
            TextField("E-mail", text: $email)
                .padding()
                .border(Color.gray, width: 1)
                .padding(.horizontal, 50)
                .keyboardType(.emailAddress)
            
            SecureField("Senha", text: $senha)
                .padding()
                .border(Color.gray, width: 1)
                .padding(.horizontal, 50)
            
            Button(action: {
               

                print("Nome: \(nome)")
                print("E-mail: \(email)")
                print("Senha: \(senha)")
            }) {
                Text("Cadastrar")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 150, height: 40)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
