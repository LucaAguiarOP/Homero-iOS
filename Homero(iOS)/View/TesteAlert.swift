import SwiftUI

struct TesteAlert: View {
    @State private var showAlert = false
    @State private var variable1: String = "Hello"
    @State private var variable2: String = "World"
    
    var body: some View {
        VStack {
            Text("Variável 1: \(variable1)")
            Text("Variável 2: \(variable2)")
            
            Button("Verificar Variáveis") {
                checkVariables()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("⚠️ Erro!"),
                  message: Text("As senhas nao coincidem."),
                  dismissButton: .default(Text("OK")))
        }
    }
    
    func checkVariables() {
        if variable1 != variable2 {
            showAlert = true
        }
    }
}

struct TesteAlert_Previews: PreviewProvider {
    static var previews: some View {
        TesteAlert()
    }
}
