import SwiftUI

struct TelaCadastro: View {
    
    @State private var textfieldnome: String = ""
    @State private var textfieldemail: String = ""
    @State private var Securefield: String = ""
    @State private var Securefield2: String = ""
    @State private var showAlert = false
    
    
    var body: some View {
        VStack {
            
            Image("Homero")
            
            TextField("Nome", text: $textfieldnome)
                .padding()
                .border(Color.gray, width: 1)
                .padding(.horizontal, 50)
            
            TextField("E-mail", text: $textfieldemail)
                .padding()
                .border(Color.gray, width: 1)
                .padding(.horizontal, 50)
                .keyboardType(.emailAddress)
            
            SecureField("Senha", text: $Securefield)
                .padding()
                .border(Color.gray, width: 1)
                .padding(.horizontal, 50)
            
            SecureField("Confirme a Senha", text: $Securefield2)
                .padding()
                .border(Color.gray, width: 1)
                .padding(.horizontal, 50)
            
            Button(action: {
                if Securefield != Securefield2 {
                    showAlert = true
                } else{
                    
                    
                }
                
            }) {
                Text("Cadastrar")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 150, height: 40)
                    .background(Color("Bluedark"))
                    .cornerRadius(10)
            }
            .padding(.top, 20)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("⚠️ Erro!"),
                      message: Text("Não foi possivel concluir o cadastro, as senhas estão diferentes!"),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            TelaCadastro()
        }
    }
}
