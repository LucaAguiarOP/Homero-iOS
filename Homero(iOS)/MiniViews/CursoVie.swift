//
//  CursoVie.swift
//  Homero(iOS)
//
//  Created by userext on 07/06/23.
//

import SwiftUI

struct CursoVie: View {
    var nomeimage: String
    var cursopequeno: String
    var curso: String
    
    var body: some View {
        
                VStack{
                    ZStack{
                        Image(systemName: "\(nomeimage)")
                            .opacity(0.05)
                        Text("\(cursopequeno)")
                            .foregroundColor(Color("Bluedark"))
                    }
                    Divider()
                        .frame(width: .infinity)
                    Text("\(curso)")
                        .foregroundColor(Color("Bluedark"))
                    
                    Button("Acessar curso"){}
                        .frame(minWidth: 400,minHeight: 400)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        //.buttonStyle(.borderedProminent)
                        .background(Color("Bluedark"))
                        .backgroundStyle(Color("Bluedark"))
                    
                    
                    
                }
            
    }
}

struct CursoVie_Previews: PreviewProvider {
    static var previews: some View {
        CursoVie(nomeimage: "POO", cursopequeno:"POO", curso: "a")
    }
}
