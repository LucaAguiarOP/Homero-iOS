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
        
        Rectangle()
            .shadow(radius: 50)
            .foregroundColor(.white)
            .frame(width: 370,height: 400)
            .overlay{
                VStack(spacing:20){
                    Image((nomeimage))
                        .opacity(0.2)
                        .frame(width: 370,height: 200)
                        .clipped()
                        .overlay{
                            HStack  {
                                Text("\(cursopequeno)")
                                    .foregroundColor(Color("Bluedark"))
                                    .font(.title)
                                Spacer()
                            }
                        }
            
                    
                    Spacer()
                    Divider()
                        .frame(width: .infinity)
                        .position(x:180,y:35)
                    VStack(spacing:27){
                        HStack(){
                            Text("\(curso)")
                            Spacer()
                        }
                        .foregroundColor(Color("Bluedark"))
                        
                        Button("Acessar curso"){}
                            .frame(minWidth: 345,minHeight: 37)

                            .foregroundColor(.white)
                            .background(Color("Bluedark"))
                            .cornerRadius(5)
                        Rectangle()
                    }
                }
            }
    }
    
}




struct CursoVie_Previews: PreviewProvider {
    static var previews: some View {
        CursoVie(nomeimage: "Background", cursopequeno:"POO", curso: "Programação orientada a objetos")
    }
}
